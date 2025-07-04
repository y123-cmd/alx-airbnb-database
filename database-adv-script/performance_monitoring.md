# Performance Monitoring Report

## 1. Objective

To continuously monitor and improve the performance of frequently used SQL queries by analyzing execution plans and applying schema optimizations.

---

## 2. Frequently Used Query

The following query retrieves all bookings made by a specific user:

```sql
SELECT * FROM bookings WHERE user_id = 2;
