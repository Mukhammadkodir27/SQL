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
