create database work;
use work;
show tables;
create table employee(
	id int auto_increment primary key, 
    last_name varchar(50) not null, 
    first_name varchar(50) not null, 
    middle_name varchar(50), 
    age int not null, 
    current_status varchar(30) not null default "employed"
);

show tables;
desc employee; 
insert into employee(first_name, last_name, age) values("Mukhammadkodir", "Abdusalomov", 22);
select * from employee;
