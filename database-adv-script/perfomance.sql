-- Performance analysis of original query
EXPLAIN
SELECT 
    bookings.id AS booking_id,
    users.name AS user_name,
    properties.name AS property_name,
    payments.amount AS payment_amount
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.payment_id = payments.id;

-- Refactored query for better performance
SELECT 
    b.id AS booking_id,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount AS payment_amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.payment_id = pay.id;
WHERE u.name = 'Alice' AND pay.amount > 100;

