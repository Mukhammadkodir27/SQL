-- create database school;
show databases;
-- in order to use this specific database
use school;
-- to check which database we are on
select database();
-- creating a table in this database
create table students
(
	username varchar(30), 
    name varchar(50), 
    age INT
);
-- shows existing tables in this database
show tables;
-- shows columns in this table to check for correct form
show columns from students;
desc students;
describe students;

-- Deleting Tables
-- drop table students;

-- Deleting entire database
-- drop database school;
