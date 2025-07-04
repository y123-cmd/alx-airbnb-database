-- Step 1: Simulate original table (if not already created)
CREATE TABLE IF NOT EXISTS bookings (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    property_id INTEGER,
    payment_id INTEGER,
    start_date DATE
);

-- Step 2: Simulate partitioning (split into separate tables)
CREATE TABLE IF NOT EXISTS bookings_2022 AS
SELECT * FROM bookings WHERE start_date BETWEEN '2022-01-01' AND '2022-12-31';

CREATE TABLE IF NOT EXISTS bookings_2023 AS
SELECT * FROM bookings WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';

-- Step 3: Test performance with EXPLAIN ANALYZE
EXPLAIN QUERY PLAN
SELECT * FROM bookings_2022 WHERE start_date = '2022-08-01';

EXPLAIN QUERY PLAN
SELECT * FROM bookings_2023 WHERE start_date = '2023-03-15';




-- Drop the table if it already exists
DROP TABLE IF EXISTS bookings;

-- Create a partitioned bookings table by RANGE of year(start_date)
CREATE TABLE bookings (
    id INT NOT NULL,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    payment_id INT NOT NULL,
    start_date DATE NOT NULL,
    PRIMARY KEY (id, start_date)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

-- Optional: Test performance using EXPLAIN
EXPLAIN
SELECT * FROM bookings WHERE start_date BETWEEN '2022-01-01' AND '2022-01-31';
