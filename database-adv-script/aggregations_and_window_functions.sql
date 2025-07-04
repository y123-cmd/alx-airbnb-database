-- Total number of bookings per user
SELECT users.name, COUNT(bookings.id) AS total_bookings
FROM users
JOIN bookings ON users.id = bookings.user_id
GROUP BY users.name;

-- Rank properties by number of bookings using RANK()
SELECT 
  properties.name AS property_name,
  COUNT(bookings.id) AS total_bookings,
  RANK() OVER (ORDER BY COUNT(bookings.id) DESC) AS rank
FROM properties
LEFT JOIN bookings ON properties.id = bookings.property_id
GROUP BY properties.name;
