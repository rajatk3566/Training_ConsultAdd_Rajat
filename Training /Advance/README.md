# Database Design and Optimization
Indexing

Clustered Index: Determines the physical order of rows in a table; each table can have only one.
Non-Clustered Index: Stores a separate structure pointing to actual data. Useful for faster lookups.
Covering Index: Contains all the columns required by a query, reducing I/O operations.

Query Optimization Techniques

Use Indexing: Helps in faster search and retrieval.
Use Joins Efficiently: Prefer INNER JOIN over OUTER JOIN.

Explain Plans and Query Execution Analysis

EXPLAIN / EXPLAIN ANALYZE: Helps analyze how a query is executed, its cost, and possible optimizations.

Partitioning and Sharding Strategies

Partitioning: Splitting data within a single database (Horizontal: based on row values, Vertical: based on columns).
Sharding: Distributing data across multiple databases to improve scalability and reduce load.

Concurrency Control and Isolation Levels

Isolation Levels: READ UNCOMMITTED, READ COMMITTED, REPEATABLE READ, SERIALIZABLE (each provides different consistency vs. performance trade-offs).
Optimistic vs. Pessimistic Locking: Optimistic assumes minimal conflicts, while pessimistic locks resources.

Deadlocks and How to Handle Them

Deadlock Occurs When: Two transactions hold resources and wait for each other indefinitely.
Handling: Set lock timeouts, use proper transaction ordering, and implement deadlock detection mechanisms.

# Stored Procedures and Functions

Creating and Managing Stored Procedures

Stored Procedures: Precompiled SQL code that improves performance and security.
Benefits: Reduces network traffic, enforces business logic at the database level.

User-Defined Functions (UDFs)

Scalar Functions: Return a single value.
Table-Valued Functions: Return a table.

Triggers and Their Uses

Types: BEFORE, AFTER, INSTEAD OF triggers.
Uses: Enforce constraints, maintain audit logs, and automate actions.

Error Handling and Transaction Management

TRY CATCH Blocks: Handle errors within stored procedures.
ROLLBACK vs. COMMIT: Ensures transactions are either fully completed or completely undone.

# Database Security

Authentication and Authorization

Authentication: Verifying user identity (passwords, multi-factor authentication).
Authorization: Granting permissions based on roles or privileges.

Role-Based Access Control (RBAC)

Role-Based Permissions: Users are assigned roles with specific permissions, reducing security risks.

Principle of Least Privilege (PoLP): Users get the minimum permissions required.

Encryption: Data-at-Rest, Data-in-Transit
Data-at-Rest: Encryption of stored data (e.g., AES-256).
Data-in-Transit: Encrypting data during transmission (e.g., TLS/SSL).

SQL Injection and Prevention

SQL Injection: Exploits improperly sanitized user inputs to manipulate SQL queries.
Prevention: Use prepared statements, parameterized queries, and ORM frameworks.

Auditing and Compliance

Audit Logs: Track database changes and user activities.
Compliance Standards: GDPR, HIPAA, and PCI DSS require database security measures.

# Advanced Topics in SQL
Full-Text Search
Efficient Searching: Used for searching large text datasets beyond basic LIKE queries.
Indexes: Uses special indexes (e.g., Full-Text Index in MySQL, SQL Server).

Temporal Tables

Track Historical Data: Automatically keeps track of changes over time.
System-Versioned Tables: Provide past versions of data for auditing.

JSON and XML Data Handling

JSON Functions: JSON_EXTRACT(), JSON_QUERY() allow querying JSON data in SQL databases.
XML Parsing: Use FOR XML (SQL Server) or EXTRACTVALUE() (MySQL) to work with XML data.

Dynamic SQL and Metaprogramming

Dynamic SQL: Generates queries dynamically using EXECUTE or PREPARE.
Metaprogramming: Writing SQL that modifies itself, useful for automation.

Spatial Data and GIS Functions

Geospatial Queries: Used in GIS applications for location-based searches.
ST_Distance(), ST_Intersects(): Functions to analyze spatial relationships.

# Big Data and NoSQL Databases

Introduction to Big Data Concepts

3Vs (Volume, Velocity, Variety): Defines characteristics of Big Data.
Batch vs. Stream Processing: Batch (Hadoop) processes large sets, Stream (Kafka, Spark) processes real-time data.

Differences Between SQL and NoSQL
SQL: Structured, relational(MySQL, PostgreSQL).
NoSQL: Schema-less, highly scalable, BASE-compliant (MongoDB, Cassandra).

Popular NoSQL Databases

MongoDB: Document-based, stores JSON-like data.
Cassandra: Column-family store, optimized for high write throughput.
Redis: Key-value store, used for caching and real-time analytics.

Integrating SQL with Big Data

SQL on Hadoop (Hive, Presto): Enables SQL-like querying on Big Data.
Spark SQL: Allows querying structured data within Apache Spark.



# Steps to solve the TASK 

1) we have to identifiy the  Entities and the Attributes.
2) Identifiying the relationship between the entities we have.
3) In the ER diagram shown how the relation can exist among entities (one to many ,
many to many ) like that 
4) Defining primary keys and Foreign keys.
5) Created Class diagram to understand easily and functions that can possible 
6) created table and written queries to get the details from the table.
