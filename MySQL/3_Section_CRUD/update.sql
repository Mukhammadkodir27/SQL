-- UPDATE to update existing table with new values, or changing some data
-- Be careful with using UPDATE because if you do not specify WHERE clause, it will change each and every row with new value provided
show tables;
select * from cats;
UPDATE cats SET name = "Rexy" WHERE cat_id = 1;
UPDATE cats SET age=14 WHERE cat_id = 5;
-- UPDATE cats SET age = 14 WHERE name = "Misty";

-- to check if such a row exists
select * from cats where name = "Misty"; 
select * from cats where breed = "Tabby";
select name from cats where age = 13;
