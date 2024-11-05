
-- we can choose specific column names from our table and mention them to provide their row values
select name from cats;
select breed from cats;
select age from cats;
select cat_id from cats;
select name, age from cats;

-- using WHERE clause
select * from cats where name = "Ringo";
select * from cats where age>=4;
select * from cats where breed = "Tabby";
select * from cats where cat_id = 1 or cat_id = 2;
select * from cats where name = "Jackson" and age = 7;
select name, breed from cats where age > 5;
select age from cats where breed = "Persian";


-- Use "AS" to alias a column in your results (it does not actually change the name of the column in the table, but will show that provided name once it is executed only)
select cat_id AS id, name AS cat_technical_name, age AS cat_age_in_year_form from cats;
select cat_id AS identification_number from cats;
