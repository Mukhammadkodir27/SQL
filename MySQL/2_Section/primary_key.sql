show databases;

select database();

use school;
select database();
show tables;
drop table students;
show tables;

-- creating a table with unique ids, PRIMARY KEYS
create table students(
	student_id int not null primary key,
    name varchar(50) not null default "unknown",
    age int not null
);

show tables;

insert into students(student_id, name, age) values(1, "Kadir", 22);
select * from students;
insert into students(student_id, name, age) values(2, "Elbek", 23);

