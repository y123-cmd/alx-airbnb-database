-- Index on user_id in bookings table
CREATE INDEX IF NOT EXISTS idx_bookings_user_id ON bookings(user_id);

-- Index on property_id in bookings table
CREATE INDEX IF NOT EXISTS idx_bookings_property_id ON bookings(property_id);

-- Index on id in users table
CREATE INDEX IF NOT EXISTS idx_users_id ON users(id);

-- Index on id in properties table
CREATE INDEX IF NOT EXISTS idx_properties_id ON properties(id);
