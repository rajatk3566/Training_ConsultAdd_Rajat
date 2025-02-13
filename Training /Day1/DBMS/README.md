# Learning
 
 # Introduction 
 In Introduction I studied about database , type of databases and  the SQl and the difference between SQL and NoSql.

 # Relational Database Fundamentals
 In this i studied about database design concept , about the Entity-Relational(ER),about 
 the keys and types of keys available and how to 
 remove redundancy in database with the help of Normalization.

 #  Basic SQL Commands and Advanced SQL Queries
 In this i learned basic Commands of sql Data Definition Language (DDL): CREATE, ALTER, DROP,Data Manipulation Language (DML): SELECT, INSERT, UPDATE, DELETE,Data Control Language (DCL): GRANT, REVOKE,Transaction Control Language (TCL): BEGIN, COMMIT, ROLLBACK
 and about the Joins to retrive data from the tables and types of joins, and about the subqueries and coorelated subqueries
 and about the Window functions like row_number(), Rank() etc.


# Question given in the Task
Write a SQL query that performs this sampling and creates the expected output ordered by image_id with integer columns image_id, weak_label




# Steps Taken To Solve The Task


1) Created a Task Database.
2) Using the Task Database.
3) Created  Table and the columns and inserted the values in the table.
4) Used Window Function (row_number()) to give unique identifier for entire window.
5) Order Did in desc for positive images ans asc for negative images based on score.
6) For positive images fetching the images starting from first and taking every third image.
7) Similarly for negative images.
8) Created a view for both positive and negative images 
9) Combined at the end with help of union to get the result for both positive and negative.
  
  
  
  
# Output we got 
15) <img width="233" alt="Screenshot 2025-02-12 at 2 52 13 PM" src="https://github.com/user-attachments/assets/21bea328-38a3-438b-85c0-c3b631537593" />





