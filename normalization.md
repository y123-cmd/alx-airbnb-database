# Database Normalization – Airbnb Schema

## Objective
To ensure our Airbnb database design is in **Third Normal Form (3NF)** by eliminating redundancy and ensuring data integrity.

---

## Step 1: First Normal Form (1NF)
- All tables have **atomic columns** — no lists or arrays.
- Every table has a **primary key**.
- Example: `User` table has simple values like `first_name`, `email`, etc. — no repeating groups.

✅ **1NF Achieved**

---

## Step 2: Second Normal Form (2NF)
- All non-key attributes are fully dependent on the entire primary key.
- We have single-column primary keys, so 2NF is automatically satisfied.

2NF Achieved

---

## Step 3: Third Normal Form (3NF)
- No transitive dependencies (i.e., non-key attributes depending on other non-key attributes).
- Example checks:
  - In `Booking`, all fields like `start_date`, `end_date`, `status`, etc., depend only on `booking_id`.
  - In `Payment`, `amount` and `payment_method` depend only on `payment_id`.
  - No table stores derived or repeated information (e.g., user email in both User and Booking — only stored in `User`).

 3NF Achieved

---

## Conclusion

The Airbnb schema is well-structured and follows all normalization rules up to **3NF**:
- No repeating groups
- No partial dependencies
- No transitive dependencies
- Proper use of foreign keys and indexes

This ensures:
- Improved data consistency
- Easier maintenance
- Less redundancy
