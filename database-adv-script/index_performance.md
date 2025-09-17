**Database Indexes for Enhanced Performance**

**What Are Indexes?**  
Indexes are specialized lookup tables that improve the speed of data retrieval in a database. They store copies of specific table columns, enabling efficient search and retrieval operations.

**Benefits of Indexes**  
For large database tables, searching through every row for specific data can be time-consuming. Indexes allow the database to locate data quickly without scanning the entire table, especially for columns frequently used in WHERE clauses or join operations.

**Optimized Tables**  
- **properties**: Stores details about Airbnb properties, such as type, location, price, and availability.  
- **users**: Contains user information, including names, email addresses, and personal details.  
- **bookings**: Tracks booking details, including dates, property IDs, and user IDs.

**SQL Scripts**  
The `database_index.sql` file includes SQL commands to create indexes on key columns in the `properties`, `users`, and `bookings` tables, boosting query performance.

**Evaluating Performance Gains**  
Use the SQL `EXPLAIN` command to analyze query execution plans before and after adding indexes. This reveals whether an index is used and highlights performance improvements.

**How to Apply Indexes**  
Run the SQL commands in `database_index.sql` using a database management tool or command-line interface. For PostgreSQL, use:  
```bash
psql -d your_database -f alx-airbnb-database/database-adv-script/database_index.sql
```  


**Requirements**  
- A relational database management system (e.g., PostgreSQL, MySQL, SQLite).  
- Basic understanding of SQL and database concepts.  
- Existing tables (`properties`, `users`, `bookings`) with relevant data.  
- Properly configured database schema for the queries to execute successfully.  
- Adjusted database connection settings for your environment.