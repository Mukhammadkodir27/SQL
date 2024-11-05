-- Deleting rows or entire row
-- In order to delete rows with name Egg or age below 1
DELETE FROM cats WHERE name = "Egg";
DELETE FROM cats WHERE age < 1;
DELETE FROM cats WHERE breed = "Tabby";
-- you can specify which row you want to delete, with DELETE and WHERE clause by providing some specifications

-- Or you can delete entire rows in a table | you can empty the table:
DELETE FROM cats;
-- here this delete command does not know which row and where to delete so it will assume entire column should be deleted. 
-- if you provide WHERE clause then it will look for specific column address and delete it or else entire table will be emptied.
-- DROP for deleting the table -- DELETE for emptying the table
-- DROP TABLE cats; -- DELETE FROM cats;
