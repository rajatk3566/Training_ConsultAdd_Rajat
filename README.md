# Question given in the Task
Write a SQL query that performs this sampling and creates the expected output ordered by image_id with integer columns image_id, weak_label




# Steps Taken Solve The Task


1) Created Task Database 
2) Using Task Database
3) Created Table and the columns and insert the values in the table
4) Used Window Function (row_number() ) to unique identifier for entire window
5) order Did desc for positive ans asc for negative 
6) for positive fetching the images starting from one and taking every third image
7) similarly for negative images
8) created a view for both positive and negative images 
9) Did union  at the end to get the result for both positive and negative.
  
  
  
  
# Output we got 
15) <img width="233" alt="Screenshot 2025-02-12 at 2 52 13 PM" src="https://github.com/user-attachments/assets/21bea328-38a3-438b-85c0-c3b631537593" />





