
-- Insert sample data into User table
INSERT INTO `User` (`user_id`, `first_name`, `last_name`, `email`, `password_hash`, `phone_number`, `role`, `created_at`) VALUES
('20200404343', 'Maxwell', 'Awini', 'awinimaxwell428@email.com', 'hash123', '+233546843973', 'admin', '2025-08-01 10:00:00'),
('123e4567-e89b-12d3-a456-426614174001', 'Abraham', 'Boakye', 'Abraboakye@email.com', 'hash456', '+233543253161', 'host', '2025-08-02 12:00:00'),
('123e4567-e89b-12d3-a456-426614174002', 'Alice', 'Brown', 'alice.brown@email.com', 'hash789', '+24555-0103', 'guest', '2025-08-03 14:00:00'),
('123e4567-e89b-12d3-a456-426614174003', 'Bob', 'Johnson', 'bob.johnson@email.com', 'hash012', '+122-555-0104', 'host', '2025-08-04 16:00:00'),
('123e4567-e89b-12d3-a456-426614174004', 'Admin', 'User', 'admin@email.com', 'hashadmin', NULL, 'admin', '2025-08-05 08:00:00');

-- Insert sample data into Property table
INSERT INTO `Property` (`property_id`, `host_id`, `name`, `description`, `location`, `pricepernight`, `created_at`, `updated_at`) VALUES
('223e4567-e89b-12d3-a456-426614174000', '123e4567-e89b-12d3-a456-426614174001', 'Cozy Beach Cottage', 'A charming cottage by the sea.', '123 Beach Rd, Miami, FL', 150.00, '2025-08-10 09:00:00', '2025-08-10 09:00:00'),
('223e4567-e89b-12d3-a456-426614174001', '123e4567-e89b-12d3-a456-426614174001', 'Downtown Loft', 'Modern loft in the city center.', '456 Main St, New York, NY', 200.00, '2025-08-11 11:00:00', '2025-08-11 11:00:00'),
('223e4567-e89b-12d3-a456-426614174002', '123e4567-e89b-12d3-a456-426614174003', 'Mountain Cabin', 'Rustic cabin with mountain views.', '789 Hill Rd, Denver, CO', 120.00, '2025-08-12 13:00:00', '2025-08-12 13:00:00');

-- Insert sample data into Booking table
INSERT INTO `Booking` (`booking_id`, `property_id`, `user_id`, `start_date`, `end_date`, `total_price`, `status`, `created_at`) VALUES
('323e4567-e89b-12d3-a456-426614174000', '223e4567-e89b-12d3-a456-426614174000', '123e4567-e89b-12d3-a456-426614174000', '2025-09-01', '2025-09-03', 300.00, 'confirmed', '2025-08-15 10:00:00'),
('323e4567-e89b-12d3-a456-426614174001', '223e4567-e89b-12d3-a456-426614174001', '123e4567-e89b-12d3-a456-426614174002', '2025-09-05', '2025-09-07', 400.00, 'pending', '2025-08-16 12:00:00'),
('323e4567-e89b-12d3-a456-426614174002', '223e4567-e89b-12d3-a456-426614174002', '123e4567-e89b-12d3-a456-426614174000', '2025-09-10', '2025-09-12', 240.00, 'canceled', '2025-08-17 14:00:00');

-- Insert sample data into Payment table
INSERT INTO `Payment` (`payment_id`, `booking_id`, `amount`, `payment_date`, `payment_method`) VALUES
('423e4567-e89b-12d3-a456-426614174000', '323e4567-e89b-12d3-a456-426614174000', 300.00, '2025-08-15 11:00:00', 'credit_card'),
('423e4567-e89b-12d3-a456-426614174001', '323e4567-e89b-12d3-a456-426614174001', 400.00, '2025-08-16 13:00:00', 'paypal');

-- Insert sample data into Review table
INSERT INTO `Review` (`review_id`, `property_id`, `user_id`, `rating`, `comment`, `created_at`) VALUES
('523e4567-e89b-12d3-a456-426614174000', '223e4567-e89b-12d3-a456-426614174000', '123e4567-e89b-12d3-a456-426614174000', 5, 'Amazing stay, loved the beach view!', '2025-08-20 09:00:00'),
('523e4567-e89b-12d3-a456-426614174001', '223e4567-e89b-12d3-a456-426614174001', '123e4567-e89b-12d3-a456-426614174002', 4, 'Great location, but a bit noisy.', '2025-08-21 10:00:00');

-- Insert sample data into Message table
INSERT INTO `Message` (`message_id`, `sender_id`, `recipient_id`, `message_body`, `sent_at`) VALUES
('623e4567-e89b-12d3-a456-426614174000', '123e4567-e89b-12d3-a456-426614174000', '123e4567-e89b-12d3-a456-426614174001', 'Is the cottage available for September?', '2025-08-14 08:00:00'),
('623e4567-e89b-12d3-a456-426614174001', '123e4567-e89b-12d3-a456-426614174001', '123e4567-e89b-12d3-a456-426614174000', 'Yes, it’s available! Let me know your dates.', '2025-08-14 09:00:00');
