-- 1. INNER JOIN: Retrieve all bookings and the users who made them
SELECT
    bookings.id AS booking_id,
    bookings.date AS booking_date,
    users.id AS user_id,
    users.name AS user_name
FROM
    bookings
INNER JOIN
    users ON bookings.user_id = users.id;

-- 2. LEFT JOIN: Retrieve all properties and their reviews, including properties with no reviews
SELECT
    properties.id AS property_id,
    properties.name AS property_name,
    reviews.id AS review_id,
    reviews.comment AS review_comment
FROM
    properties
LEFT JOIN
    reviews ON properties.id = reviews.property_id
ORDER BY properties.name;

-- 3. FULL OUTER JOIN: Retrieve all users and bookings, even if not matched
-- Note: MySQL does not support FULL OUTER JOIN directly, so we use UNION of LEFT and RIGHT JOINs

SELECT
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.date AS booking_date
FROM
    users
LEFT JOIN
    bookings ON users.id = bookings.user_id

UNION

SELECT
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.date AS booking_date
FROM
    bookings
RIGHT JOIN
    users ON users.id = bookings.user_id;
