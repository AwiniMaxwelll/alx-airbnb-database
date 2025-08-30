# AirBnB Database Normalization to 3NF

## Objective
The goal is to ensure the AirBnB database schema adheres to **Third Normal Form (3NF)** by reviewing for redundancies and normalization violations, making necessary adjustments, and documenting the process.

## Normalization Principles
- **1NF**: Attributes are atomic, and each table has a primary key.
- **2NF**: Must be in 1NF, with no partial dependencies (non-key attributes depend on the entire primary key).
- **3NF**: Must be in 2NF, with no transitive dependencies (non-key attributes depend only on the primary key, not other non-key attributes).

## Initial Schema Review
The original schema includes six tables: **User**, **Property**, **Booking**, **Payment**, **Review**, and **Message**. Each table was analyzed for 1NF, 2NF, and 3NF compliance.

### 1NF Analysis
- **All Tables**:
  - Attributes are atomic (e.g., no multi-valued fields like lists).
  - Each table has a unique primary key (UUID: `user_id`, `property_id`, etc.).
  - ENUM fields (`role`, `status`, `payment_method`) store single values.
  - **Result**: All tables are in 1NF.

### 2NF Analysis
- **All Tables**:
  - No composite primary keys (all use single UUIDs).
  - No partial dependencies, as 2NF issues arise only with composite keys.
  - **Result**: All tables are in 2NF.

### 3NF Analysis
- **User, Review, Message**:
  - Non-key attributes depend only on the primary key.
  - No transitive dependencies.
  - **Result**: 3NF compliant.
- **Property**:
  - `location` (VARCHAR) may contain non-atomic data (e.g., street, city, country), potentially violating 1NF and 3NF if parts are interdependent.
- **Booking**:
  - `total_price` likely depends on `start_date`, `end_date`, and `Property.pricepernight`, creating a transitive dependency (3NF violation).
- **Payment**:
  - `amount` may depend on `Booking.total_price` (or calculated equivalent), raising potential redundancy concerns.

## Normalization Adjustments
Three issues were addressed to achieve 3NF:

### 1. Property.location (Address Normalization)
- **Issue**: `location` (VARCHAR) may store complex data (e.g., "123 Main St, New York, NY, USA"), violating 1NF (non-atomic) and potentially 3NF (e.g., city → country).
- **Solution**:
  - Create a new **Address** table:
    - address_id: UUID (PK, Indexed)
    - property_id: UUID (FK → Property.property_id)
    - street: VARCHAR (NOT NULL)
    - city: VARCHAR (NOT NULL)
    - state: VARCHAR (NULL)
    - country: VARCHAR (NOT NULL)
    - postal_code: VARCHAR (NULL)
    - created_at: TIMESTAMP (DEFAULT CURRENT_TIMESTAMP)
  - Update **Property**:
    - Remove `location`.
    - Add `address_id: UUID (FK → Address.address_id)`.
- **Reason**: Splitting `location` into atomic attributes ensures 1NF and eliminates transitive dependencies (e.g., city → country), achieving 3NF. The 1:1 relationship between Property and Address maintains data integrity.

### 2. Booking.total_price (Transitive Dependency)
- **Issue**: `total_price` depends on `start_date`, `end_date`, and `Property.pricepernight` (via `property_id`), violating 3NF.
- **Solution**:
  - Remove `total_price` from Booking.
  - Calculate `total_price` dynamically in queries or application logic: `total_price = Property.pricepernight * (end_date - start_date)`.
- **Reason**: Removing `total_price` eliminates the transitive dependency, as no stored attribute depends on non-key attributes. This reduces redundancy and ensures 3NF.

### 3. Payment.amount (Potential Redundancy)
- **Issue**: `amount` may duplicate or depend on `Booking.total_price` (or calculated equivalent), raising redundancy concerns.
- **Solution**:
  - Retain `amount`, as it represents the actual amount paid, which may differ from `total_price` due to discounts or fees.
  - Document that `amount` is independent but should align with calculated `total_price` unless overridden by business logic.
- **Reason**: `amount` is a distinct attribute tied to the payment event, not a direct dependency on Booking, so it’s 3NF compliant. No schema change is needed.

## Final Normalized Schema
The adjusted schema, now in 3NF, includes:

1. **User** (Unchanged):
   - user_id: UUID (PK)
   - first_name: VARCHAR (NOT NULL)
   - last_name: VARCHAR (NOT NULL)
   - email: VARCHAR (UNIQUE, NOT NULL)
   - password_hash: VARCHAR (NOT NULL)
   - phone_number: VARCHAR (NULL)
   - role: ENUM(guest, host, admin) (NOT NULL)
   - created_at: TIMESTAMP

2. **Property** (Updated):
   - property_id: UUID (PK)
   - host_id: UUID (FK → User.user_id)
   - name: VARCHAR (NOT NULL)
   - description: TEXT (NOT NULL)
   - address_id: UUID (FK → Address.address_id)
   - pricepernight: DECIMAL (NOT NULL)
   - created_at: TIMESTAMP
   - updated_at: TIMESTAMP

3. **Address** (New):
   - address_id: UUID (PK)
   - property_id: UUID (FK → Property.property_id)
   - street: VARCHAR (NOT NULL)
   - city: VARCHAR (NOT NULL)
   - state: VARCHAR (NULL)
   - country: VARCHAR (NOT NULL)
   - postal_code: VARCHAR (NULL)
   - created_at: TIMESTAMP

4. **Booking** (Updated):
   - booking_id: UUID (PK)
   - property_id: UUID (FK → Property.property_id)
   - user_id: UUID (FK → User.user_id)
   - start_date: DATE (NOT NULL)
   - end_date: DATE (NOT NULL)
   - status: ENUM(pending, confirmed, canceled) (NOT NULL)
   - created_at: TIMESTAMP

5. **Payment** (Unchanged):
   - payment_id: UUID (PK)
   - booking_id: UUID (FK → Booking.booking_id)
   - amount: DECIMAL (NOT NULL)
   - payment_date: TIMESTAMP
   - payment_method: ENUM(credit_card, paypal, stripe) (NOT NULL)

6. **Review** (Unchanged):
   - review_id: UUID (PK)
   - property_id: UUID (FK → Property.property_id)
   - user_id: UUID (FK → User.user_id)
   - rating: INTEGER (CHECK: 1-5, NOT NULL)
   - comment: TEXT (NOT NULL)
   - created_at: TIMESTAMP

7. **Message** (Unchanged):
   - message_id: UUID (PK)
   - sender_id: UUID (FK → User.user_id)
   - recipient_id: UUID (FK → User.user_id)
   - message_body: TEXT (NOT NULL)
   - sent_at: TIMESTAMP

## Conclusion
The original schema was mostly normalized but had two issues: `Property.location` (non-atomic) and `Booking.total_price` (transitive dependency). By introducing an **Address** table and removing `total_price`, the schema now satisfies 3NF:
- All attributes are atomic (1NF).
- No partial dependencies (2NF, as no composite keys).
- No transitive dependencies (3NF, as non-key attributes depend only on primary keys).
The **Payment.amount** was retained with clarified purpose, avoiding redundancy. The schema is now optimized for data integrity and minimal redundancy while supporting AirBnB’s functionality.