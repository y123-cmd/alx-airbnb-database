# Airbnb Database Schema

This schema.sql file defines the structure of the Airbnb-like database system.

It includes:

- Users (guests, hosts, admins)
- Properties listed by hosts
- Bookings by users
- Payments linked to bookings
- Reviews for properties
- Messaging between users

Key features:
- UUID primary keys
- Proper foreign key relationships
- ENUMs for roles, status, and payment method
- Indexes for performance on frequent queries

Designed to follow 3NF to ensure minimal redundancy and clean relationships.
