-- creating an empty database
create database book_shop;
use book_shop;
select database();

CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

select * from books;


# CONCAT
-- SELECT CONCAT();
-- Combine Data For Cleaner Output
-- Concatenate stands for combining strings or combining text together
-- For example you can concatenate characters to make up a string
select concat('H', 'E', 'L', 'L', 'O');   -- output will be HELLO
-- we will be concatenating different columns, for example joining first name and last name columns from a table to get full names
select concat(author_fname,' ',author_lname) from books;
select concat(author_fname, "!!!") from books;
select concat(author_fname,' ',author_lname) AS full_name from books;

-- CONCAT_WS
-- concat with seperator 
select concat_ws('-', title, author_fname, author_lname) as description from books;
select concat_ws(' ', title, author_fname, author_lname) as description_with_white_space from books;



-- SUBSTRING
-- working with parts of strings
-- The SUBSTRING() function extracts some characters from a string. Syntax:
-- SUBSTRING(string, start, length)
-- SUBSTRING("String", 2, 3)
-- SUBSTRING("String" FROM 2 FOR 3)
-- as you can see there is no comma in between while using FROM and FOR keywords inside the function, but if no then use comma as a separator
SELECT SUBSTRING("Quadratically", 5);
SELECT SUBSTRING("foobarbar" FROM 4);
SELECT SUBSTRING('Quadratically', 5, 6);
SELECT SUBSTRING('Sakila', -3);
SELECT SUBSTRING('Sakila', -5, 3);
SELECT SUBSTRING('Sakila' FROM -4 FOR 2);

-- in SQL indexing starts form 1 not 0
-- using SUBSTRING() function in our books table
SELECT SUBSTRING(title, 1, 15) from books;
-- title refers to the column name where we stored our text, in books table

-- SUBSTR() also works
-- if SUBSTRING() is just too much typing, you can use SUBSTR() instead
-- lets get the first letters of names from names columnd in books table
SELECT SUBSTR(author_fname, 1, 1) FROM books;
SELECT SUBSTR(author_fname, 1, 1) AS first_letter, author_fname AS names FROM books;


-- Combining String Functions
-- CONCAT + SUBSTRING
SELECT CONCAT(SUBSTR(title, 1, 10), '...') AS short_title from books;
SELECT CONCAT(SUBSTR(author_fname, 1, 1), '.', SUBSTR(author_lname, 1, 1), '.') AS author_initials FROM books;
-- A.S.
-- J.D.	
-- W.F.	


-- REPLACE
-- replace parts of strings
/*	By using those string functions we are not updating, we are not updating our tables at all.
We are simply displaying or selecting information and changing the way that information looks after we remove it or we select it from the database, 
but our data is completely unchanged. Replace does not change the actual content of our table.	*/
-- REPLACE(string, from_string, to_string)
SELECT REPLACE('www.mysql.com', 'w', 'Ww');
SELECT REPLACE('Hello World', 'Hello', 'Hi');
-- lets use replace in our table
SELECT REPLACE(title, ' ', '-') FROM books;


-- REVERSE
SELECT REVERSE("Hello World");
-- Syntax: REVERSE(str)
SELECT REVERSE(author_fname) FROM books;
SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;
-- TommoT
-- DaveevaD
-- EvaavE


-- CHAR_LENGTH
-- counts characters in string
SELECT CHAR_LENGTH('Hello World');
-- 11
-- CHAR_LENGTH() function returns the number of characters in its argument.
-- LENGTH() function returns the length of a string in bytes(not the number of characters)
SELECT CHAR_LENGTH(title) FROM books;
SELECT CHAR_LENGTH(author_fname) FROM books;
SELECT CHAR_LENGTH(title) AS len, title FROM books;



-- UPPER() and LOWER() 
-- UCASE() and LCASE()
-- change a string's case
select upper("Hello World");
select lower("Hello World");
select ucase("Hello World");
select lcase("Hello World");

select upper(title) from books;
select lower(title) from books;
select concat("I love ", upper(title), " !!!") from books;



-- INSERT
-- Syntax: INSERT(str, position, len, new_str)
select insert('Quadratic', 3, 4, 'What');
select insert('Quadratic', -1, 4, 'What');
select insert('Quadratic', 3, 100, 'What');
select insert('Hello Bobby', 6, 0, ' There');
select insert('Hello Bobby', 6, 4, ' There');
select insert('Hello Bobby', 6, 6, 'There');



-- INSTR
-- Syntax: INSTR(str, substr) 
-- in string, this function returns the position of the first occurance of substring substr in string str.
select instr('foobarbar', 'bar');



-- LEFT
-- LEFT(str, len)
-- Returns the leftmost len characters from the string str, or NULL if any argument is NULL
select left('foobarbar', 5);
-- RIGHT
-- RIGHT(str, len)
-- Returns the rightmost len characters from the string str, or NULL if any argument is NULL
select right('foobarbar', 5);
-- in our table:
select left(author_fname, 1) from books;
select concat(left(author_fname, 1), '.', left(author_lname, 1), '.') from books;
select right(title, 15) from books;



-- REPEAT
-- REPEAT(str, count)
-- Returns a string consisting of the string str repeated count times. If count is less than 1, like 0, returns an empty string.
select repeat('Hello', 5);		
select repeat(author_fname, 3) from books;




-- TRIM
select trim('         bar	');
select trim(leading '-' from '------bar--------');
select trim(both '-' from '--------bar---------');
select trim(trailing '-' from '------bar--------');
