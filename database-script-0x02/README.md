AirBnB Seed Database README

Overview

This document describes the seed database for the AirBnB-like platform, providing sample data to populate the database tables (User, Property, Booking, Payment, Review, Message). The seed data, available in sample_data.sql, simulates real-world usage of the platform, including multiple users, properties, bookings, payments, reviews, and messages. It is designed to work with the AirBnB database schema, ensuring compliance with all constraints and relationships.

Purpose

The seed database serves the following purposes:





Testing: Provides realistic data to test database queries, application functionality, and performance.



Development: Enables developers to work with a populated database for building and debugging features.



Demonstration: Simulates typical platform interactions (e.g., users booking properties, leaving reviews, sending messages) for showcasing the system.

Database Schema Reference

The seed data aligns with the AirBnB database schema, which includes:





User: Stores user information (guests, hosts, admins).



Property: Stores rental property details.



Booking: Tracks bookings made by users for properties.



Payment: Records payments for bookings.



Review: Captures user reviews for properties.



Message: Manages messages between users.



Constraints: Primary keys (UUIDs), foreign keys, UNIQUE (User.email), CHECK (Review.rating), ENUMs (role, status, payment_method), and NOT NULL constraints.

For full schema details, refer to the project’s main README or schema.sql.

Seed Data Details

The seed data, provided in sample_data.sql, includes realistic entries reflecting AirBnB-like interactions as of August 30, 2025.

User





Count: 5 users.



Details:





2 guests (John Doe, Alice Brown), 2 hosts (Jane Smith, Bob Johnson), 1 admin.



Attributes: Unique user_id (UUID), realistic names, unique emails, placeholder password hashes (hashXXX), phone numbers (optional), roles (guest, host, admin), and created_at timestamps.



Example: John Doe (user_id: 123e4567-e89b-12d3-a456-426614174000, email: john.doe@email.com, role: guest).

Property





Count: 3 properties.



Details:





Owned by hosts (Jane Smith: 2 properties, Bob Johnson: 1 property).



Attributes: Unique property_id (UUID), host_id (FK → User.user_id), varied names (e.g., "Cozy Beach Cottage"), descriptions, locations (e.g., "123 Beach Rd, Miami, FL"), prices ($120-$200/night), and timestamps.



Example: Cozy Beach Cottage (property_id: 223e4567-e89b-12d3-a456-426614174000, host_id: Jane Smith, pricepernight: 150.00).

Booking





Count: 3 bookings.



Details:





Made by guests (John Doe: 2 bookings, Alice Brown: 1 booking) for different properties.



Attributes: Unique booking_id (UUID), property_id (FK), user_id (FK), start_date and end_date (September 2025), total_price (calculated as pricepernight * days), status (confirmed, pending, canceled), and created_at.



Example: John books Cozy Beach Cottage for 2 nights (total_price: 300.00, status: confirmed).

Payment





Count: 2 payments.



Details:





Linked to confirmed and pending bookings (no payment for canceled booking).



Attributes: Unique payment_id (UUID), booking_id (FK), amount (matches Booking.total_price), payment_date, payment_method (credit_card, paypal).



Example: Payment for John’s confirmed booking (amount: 300.00, payment_method: credit_card).

Review





Count: 2 reviews.



Details:





Written by guests (John, Alice) for properties they booked.



Attributes: Unique review_id (UUID), property_id (FK), user_id (FK), rating (4 or 5), comment, created_at.



Example: John’s review for Cozy Beach Cottage (rating: 5, comment: Amazing stay, loved the beach view!).

Message





Count: 2 messages.



Details:





Simulates guest-host communication (John ↔ Jane about availability).



Attributes: Unique message_id (UUID), sender_id (FK), recipient_id (FK), message_body, sent_at.



Example: John asks Jane, “Is the cottage available for September?”; Jane responds, “Yes, it’s available!”

Data Characteristics





Realism: Reflects typical AirBnB scenarios (e.g., guests booking properties, hosts responding, payments for confirmed bookings).



Consistency: Adheres to all schema constraints:





Foreign keys reference valid user_id, property_id, booking_id.



User.email is unique.



Review.rating is 1-5.



ENUM values are valid (role, status, payment_method).



total_price aligns with pricepernight * (end_date - start_date).



UUIDs: Simplified UUIDs (e.g., 123e4567-e89b-12d3-a456-426614174000) for readability; use a UUID generator in production.



Dates: Timestamps and booking dates are set relative to August 30, 2025, for relevance.

Setup Instructions





Prerequisites:





Ensure the database schema is created using schema.sql (tables: User, Property, Booking, Payment, Review, Message).



Use MySQL or PostgreSQL (adjust CHAR(36) to UUID for PostgreSQL if needed).



Execute Seed Data:





Run the INSERT statements in sample_data.sql.



Execute in order (User, Property, Booking, Payment, Review, Message) due to foreign key dependencies.



Example command in MySQL:

mysql -u username -p database_name < sample_data.sql



Verify Data:





Check data insertion with queries:





List all users: SELECT * FROM User;



View bookings with properties: SELECT b.booking_id, p.name, b.total_price FROM Booking b JOIN Property p ON b.property_id = p.property_id;



Check reviews: SELECT * FROM Review WHERE rating >= 4;

Usage





Testing: Use the seed data to test application features (e.g., booking workflows, review displays, messaging systems).



Queries:





Find available properties: SELECT * FROM Property WHERE property_id NOT IN (SELECT property_id FROM Booking WHERE status = 'confirmed' AND start_date <= '2025-09-01' AND end_date >= '2025-09-01');



List user bookings: SELECT * FROM Booking WHERE user_id = '123e4567-e89b-12d3-a456-426614174000';



View messages between users: SELECT * FROM Message WHERE sender_id = '123e4567-e89b-12d3-a456-426614174000' OR recipient_id = '123e4567-e89b-12d3-a456-426614174000';



Application Integration: Connect to the database using a backend framework (e.g., Node.js, Django) to interact with the seed data.

Files





sample_data.sql: SQL INSERT statements for the seed data.



seed_database_README.md: This file, documenting the seed database.

Notes





Normalization: The seed data aligns with the original schema. If implementing the recommended 3NF changes (e.g., Address table, removing Booking.total_price), update the seed data accordingly.



Scalability: The current dataset is small (5 users, 3 properties, etc.). For larger-scale testing, generate additional data using scripts or tools.



UUID Generation: Replace sample UUIDs with generated ones in production (e.g., MySQL’s UUID(), PostgreSQL’s uuid_generate_v4()).

Future Improvements





Expand Data: Add more users, properties, and bookings for stress testing.



Dynamic Calculations: If Booking.total_price is removed (per 3NF recommendation), adjust seed data to exclude it and rely on queries.



Additional Scenarios: Include edge cases (e.g., multiple payments for a booking, deleted users).



Automation: Create a script to generate larger datasets programmatically.

License

This seed database is for educational purposes and provided as-is. No specific license is applied unless specified by the project owner.
