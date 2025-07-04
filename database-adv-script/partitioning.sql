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
