# Database Design and Optimization
 1) Indexing

Clustered Index: Determines the physical order of rows in a table; each table can have only one.
Non-Clustered Index: Stores a separate structure pointing to actual data. Useful for faster lookups.
Covering Index: Contains all the columns required by a query, reducing I/O operations.

2) Query Optimization Techniques

Use Indexing: Helps in faster search and retrieval.
Use Joins Efficiently: Prefer INNER JOIN over OUTER JOIN.

3) Explain Plans and Query Execution Analysis

EXPLAIN / EXPLAIN ANALYZE: Helps analyze how a query is executed, its cost, and possible optimizations.

4) Partitioning and Sharding Strategies

Partitioning: Splitting data within a single database (Horizontal: based on row values, Vertical: based on columns).
Sharding: Distributing data across multiple databases to improve scalability and reduce load.

5) Concurrency Control and Isolation Levels

Isolation Levels: READ UNCOMMITTED, READ COMMITTED, REPEATABLE READ, SERIALIZABLE (each provides different consistency vs. performance trade-offs).
Optimistic vs. Pessimistic Locking: Optimistic assumes minimal conflicts, while pessimistic locks resources.

6) Deadlocks and How to Handle Them

Deadlock Occurs When: Two transactions hold resources and wait for each other indefinitely.
Handling: Set lock timeouts,  we can use use proper transaction ordering.

# Stored Procedures and Functions

1) Creating and Managing Stored Procedures

Stored Procedures: Precompiled SQL code that improves performance and security.
Benefits: Reduces network traffic, enforces business logic at the database level.

2) User-Defined Functions (UDFs)

Scalar Functions: Return a single value.
Table-Valued Functions: Return a table.

3) Triggers and Their Uses

Types: BEFORE, AFTER, INSTEAD OF triggers.
Uses: Enforce constraints, maintain audit logs, and automate actions.

4) Error Handling and Transaction Management

TRY CATCH Blocks: Handle errors within stored procedures.
ROLLBACK vs. COMMIT: Ensures transactions are either fully completed or completely undone.

# Database Security

1) Authentication and Authorization

Authentication: Verifying user identity (passwords, multi-factor authentication).
Authorization: Granting permissions based on roles or privileges.

2) Role-Based Access Control (RBAC)

Role-Based Permissions: Users are assigned roles with specific permissions, reducing security risks.

3) Principle of Least Privilege (PoLP): Users get the minimum permissions required.

Encryption: Data-at-Rest, Data-in-Transit
Data-at-Rest: Encryption of stored data (e.g., AES-256).
Data-in-Transit: Encrypting data during transmission (e.g., TLS/SSL).

4) SQL Injection and Prevention

SQL Injection: Exploits improperly sanitized user inputs to manipulate SQL queries.
Prevention: Use prepared statements, parameterized queries, and ORM frameworks.

5) Auditing and Compliance

Audit Logs: Track database changes and user activities.
Compliance Standards: GDPR, HIPAA, and PCI DSS require database security measures.

# Advanced Topics in SQL

1) Full-Text Search

Efficient Searching: Used for searching large text datasets beyond basic LIKE queries.
Indexes: Uses special indexes (e.g., Full-Text Index in MySQL, SQL Server).

2) Temporal Tables

Track Historical Data: Automatically keeps track of changes over time.
System-Versioned Tables: Provide past versions of data for auditing.

3) JSON and XML Data Handling

JSON Functions: JSON_EXTRACT(), JSON_QUERY() allow querying JSON data in SQL databases.
XML Parsing: Use FOR XML (SQL Server) or EXTRACTVALUE() (MySQL) to work with XML data.

4) Dynamic SQL and Metaprogramming

Dynamic SQL: Generates queries dynamically using EXECUTE or PREPARE.
Metaprogramming: Writing SQL that modifies itself, useful for automation.

5) Spatial Data and GIS Functions

Geospatial Queries: Used in GIS applications for location-based searches.
ST_Distance(), ST_Intersects(): Functions to analyze spatial relationships.

# Big Data and NoSQL Databases

1) Introduction to Big Data Concepts

3Vs (Volume, Velocity, Variety): Defines characteristics of Big Data.
Batch vs. Stream Processing: Batch (Hadoop) processes large sets, Stream (Kafka, Spark) processes real-time data.

2) Differences Between SQL and NoSQL

SQL: Structured, relational(MySQL, PostgreSQL).
NoSQL: Schema-less, highly scalable, BASE-compliant (MongoDB, Cassandra).

3) Popular NoSQL Databases

MongoDB: Document-based, stores JSON-like data.
Cassandra: Column-family store, optimized for high write throughput.
Redis: Key-value store, used for caching and real-time analytics.

4) Integrating SQL with Big Data

SQL on Hadoop (Hive, Presto): Enables SQL-like querying on Big Data.
Spark SQL: Allows querying structured data within  Spark.

