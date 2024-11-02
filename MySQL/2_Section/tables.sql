select database();

show tables;

desc students;

-- Inserting values into a table
insert into students(username, name, age) values("user123", "Elbek", 23);

desc students;

select * from students;

-- inserting multiple values into a table at once
insert into students(username, name, age) values
("user1", "Kadir", 22), ("user2", "Elbek", 23), ("user3","Boy",21);

select * from students;



-- working with not null
select * from students;
desc students;

create table people
(
	name varchar(50) not null, 
    age int not null
);

show tables;
desc people;

insert into people(name, age) values("Kadir", 22);
select * from people;
