AirBnB Database Project

Overview

This project defines a relational database schema for an AirBnB-like platform, designed to manage users, properties, bookings, payments, reviews, and messages. The schema is optimized for data integrity, performance, and scalability, adhering to database design best practices, including normalization to the Third Normal Form (3NF).

Database Schema

The database consists of six core entities, each with specific attributes, constraints, and relationships to support the functionality of a property rental platform.

Entities and Relationships





User





Represents platform users (guests, hosts, or admins).



Attributes: user_id (PK), first_name, last_name, email (UNIQUE), password_hash, phone_number (NULL), role (ENUM: guest, host, admin), created_at.



Relationships:





Hosts multiple Properties (1:N).



Makes multiple Bookings (1:N).



Writes multiple Reviews (1:N).



Sends and receives multiple Messages (1:N).



Property





Represents rental properties listed by hosts.



Attributes: property_id (PK), host_id (FK → User.user_id), name, description, location, pricepernight, created_at, updated_at.



Relationships:





Belongs to one User (host).



Has multiple Bookings (1:N).



Receives multiple Reviews (1:N).



Booking





Represents a booking made by a user for a property.



Attributes: booking_id (PK), property_id (FK → Property.property_id), user_id (FK → User.user_id), start_date, end_date, total_price, status (ENUM: pending, confirmed, canceled), created_at.



Relationships:





Belongs to one Property and one User.



Has one Payment (1:1 or 1:0..1).



Payment





Represents payments made for bookings.



Attributes: payment_id (PK), booking_id (FK → Booking.booking_id), amount, payment_date, payment_method (ENUM: credit_card, paypal, stripe).



Relationships:





Belongs to one Booking.



Review





Represents reviews left by users for properties.



Attributes: review_id (PK), property_id (FK → Property.property_id), user_id (FK → User.user_id), rating (INT, 1-5), comment, created_at.



Relationships:





Belongs to one Property and one User.



Message





Represents messages exchanged between users.



Attributes: message_id (PK), sender_id (FK → User.user_id), recipient_id (FK → User.user_id), message_body, sent_at.



Relationships:





Sent by one User, received by one User.

Constraints





Primary Keys: UUIDs for all tables (user_id, property_id, etc.), ensuring uniqueness.



Foreign Keys:





Property.host_id → User.user_id



Booking.property_id → Property.property_id



Booking.user_id → User.user_id



Payment.booking_id → Booking.booking_id



Review.property_id → Property.property_id



Review.user_id → User.user_id



Message.sender_id, recipient_id → User.user_id



Unique Constraints: User.email is UNIQUE to prevent duplicate accounts.



Check Constraints: Review.rating restricted to 1-5.



Non-null Constraints: Applied to essential fields (e.g., first_name, name, start_date).



ENUMs: Used for role, status, and payment_method to enforce valid values.

Indexes





Primary Keys: Automatically indexed (user_id, property_id, etc.).



Additional Indexes:





User.email for fast lookups.



Property.host_id, Booking.property_id, Booking.user_id, Payment.booking_id, Review.property_id, Review.user_id, Message.sender_id, Message.recipient_id for efficient joins and queries.

Normalization

The schema was analyzed and adjusted to ensure Third Normal Form (3NF):





1NF: All attributes are atomic, with no repeating groups or multi-valued fields.



2NF: No partial dependencies, as all tables use single-column primary keys (UUIDs).



3NF: Transitive dependencies were addressed:





Property.location was identified as potentially non-atomic. A recommendation was made to split it into a separate Address table (address_id, street, city, etc.) for full normalization, though the original schema retains location as VARCHAR for simplicity.



Booking.total_price was identified as dependent on start_date, end_date, and Property.pricepernight. A recommendation was made to remove total_price and calculate it dynamically to eliminate the transitive dependency, though the original schema retains it for practical use.



Payment.amount was clarified as an independent attribute (not redundant with total_price), ensuring 3NF compliance.

SQL Implementation

The database is implemented using SQL CREATE TABLE statements, available in the project files. Key features:





Data Types: UUIDs as CHAR(36), VARCHAR for strings, DECIMAL for prices, TIMESTAMP for dates, ENUM for restricted values.



Constraints: Primary keys, foreign keys, UNIQUE, CHECK, and NOT NULL constraints are enforced.



Indexes: Added for performance on frequently queried or joined columns.

Setup Instructions





Database Environment:





Use a relational database management system (e.g., MySQL, PostgreSQL).



Ensure UUID support (e.g., MySQL’s CHAR(36) or PostgreSQL’s UUID type).



Create Tables:





Execute the SQL CREATE TABLE statements in the provided schema.sql file.



Order matters due to foreign key dependencies: Create User first, then Property, Booking, Payment, Review, and Message.



Populate Data:





Insert sample data or use an application to populate tables.



Ensure UUIDs are generated properly (e.g., using UUID() in MySQL or uuid_generate_v4() in PostgreSQL).



Indexing:





The provided indexes optimize common queries (e.g., finding bookings by property or user).



Monitor performance and add indexes as needed for specific use cases.

Usage





Application Integration: Use the database with a backend application (e.g., Node.js, Django) to manage rentals, bookings, and user interactions.



Queries:





Retrieve available properties: SELECT * FROM Property WHERE property_id NOT IN (SELECT property_id FROM Booking WHERE status = 'confirmed' AND ...);



Calculate booking cost: SELECT (DATEDIFF(end_date, start_date) * pricepernight) AS total FROM Booking JOIN Property ON Booking.property_id = Property.property_id;



Fetch user reviews: SELECT * FROM Review WHERE user_id = ?;

Future Improvements





Address Table: Implement the recommended Address table to fully normalize Property.location.



Dynamic Total Price: Remove Booking.total_price and compute it in queries to eliminate redundancy.



Additional Indexes: Analyze query patterns to add indexes for specific workloads.



Triggers/Constraints: Add triggers to enforce business rules (e.g., end_date > start_date in Booking).



Partitioning: For large-scale deployments, consider partitioning tables like Booking or Message by date.

License

This project is for educational purposes and provided as-is. No specific license is applied unless specified by the project owner.
