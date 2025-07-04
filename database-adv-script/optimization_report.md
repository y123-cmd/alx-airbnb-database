# Optimization Report

## Original Query

The original query joined 4 tables and selected full names of each table. It was simple but inefficient when analyzing using EXPLAIN due to full table scans.

## Performance Issues

- Full table scans (no indexes used)
- Selecting all records from large joined tables

## Improvements

- Added indexing on `bookings.user_id`, `bookings.property_id`, and `bookings.payment_id`
- Used table aliases
- Selected only needed fields
- Reduced column usage in SELECT

## Result

Using `EXPLAIN` after indexing and refactoring showed index usage and reduced scan operations.
