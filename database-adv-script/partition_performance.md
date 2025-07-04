# Partitioning Performance Report

## Strategy
Since SQLite doesn't support native partitioning, I simulated it by creating separate tables (`bookings_2022`, `bookings_2023`) based on `start_date`.

## Performance Before Partitioning
Querying the entire `bookings` table (with EXPLAIN ANALYZE) resulted in a full table scan.

Example:
```sql
EXPLAIN QUERY PLAN SELECT * FROM bookings WHERE start_date = '2022-08-01';
