-- Sample Data for Airbnb Schema

-- Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES 
('uuid-1', 'Alice', 'Walker', 'alice@gmail.com', 'hashed_password1', '0712345678', 'guest', CURRENT_TIMESTAMP),
('uuid-2', 'Bob', 'Kenya', 'bob@gmail.com', 'hashed_password2', '0798765432', 'host', CURRENT_TIMESTAMP),
('uuid-3', 'Admin', 'User', 'admin@gmail.com', 'admin_hashed', NULL, 'admin', CURRENT_TIMESTAMP);

-- Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES 
('prop-1', 'uuid-2', 'Cozy Loft', 'A beautiful loft in Nairobi', 'Nairobi, Kenya', 4500.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('prop-2', 'uuid-2', 'Beach Villa', 'A seaside villa perfect for vacations', 'Diani, Kenya', 12000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES 
('book-1', 'prop-1', 'uuid-1', '2025-07-01', '2025-07-05', 18000.00, 'confirmed', CURRENT_TIMESTAMP),
('book-2', 'prop-2', 'uuid-1', '2025-08-15', '2025-08-18', 36000.00, 'pending', CURRENT_TIMESTAMP);

-- Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES 
('pay-1', 'book-1', 18000.00, CURRENT_TIMESTAMP, 'credit_card');

-- Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES 
('rev-1', 'prop-1', 'uuid-1', 5, 'Great place, I loved it!', CURRENT_TIMESTAMP);

-- Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES 
('msg-1', 'uuid-1', 'uuid-2', 'Hi! Is the loft available next weekend?', CURRENT_TIMESTAMP);
