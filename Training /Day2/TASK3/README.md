# Question Given in the TASK

An MMORPG game is under development. For the profile and inventory
mechanics, it needs a query that advises the best quality items available in the
inventory.
Item quality is represented by three ranks (from lowest to highest): "common",
"rare", and "epic".
The result should have the following columns: username / type / advised_quality /
advised _name.
username - account username
type - item type
advised_quality - advised item quality ("common", "rare" or "epic")
advised_name - list of advised items records:
A record is the name of the item.
Records are separated by a comma.
Records are sorted in ascending order by name.
The result should be sorted in ascending order by username, then in ascending
order by type.
Note:
Accounts may not have items of a specific type at all.
More than one item of the same type may be advised, as long as they are of the same quality.



# Approach to solve the Task

1) Creating a database for Task 3 and using this database. 
2) Creating the tables required  like items, accounts and account_item.
3) inserting the values in the table.
4) Combining all the tables and and giving rank and doing partition by username ,type and oder them based on the quality.
5) Created Case to select the qulaity like for epic it is 1, rare it is 2 and for common is  3.
6) Created a view  as Joined_item for that so able to use anywhere where we want.
7) Now i am selecting the username, type ,quality, and name from the view as required in the output.
9) while selecting the name we can have multilple answers for that we did GROUP_CONCAT.
8) i have to select the ranked 1 item.
9) At the end just doing Groupby and order by username and type to get the desired output.
