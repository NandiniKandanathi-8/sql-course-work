-- 1. Create Database
CREATE DATABASE training_center;
USE training_center;

-- 2. Create Tables

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    course VARCHAR(50),
    fees INT
);

CREATE TABLE trainers (
    trainer_id INT PRIMARY KEY,
    trainer_name VARCHAR(50),
    experience INT,
    subject VARCHAR(50),
    salary INT
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    duration_months INT,
    fees INT
);

-- 3. Insert Sample Data

INSERT INTO students VALUES
(1,'Rahul',21,'Hyderabad','Python',25000),
(2,'Sneha',22,'Chennai','Java',30000),
(3,'Arjun',20,'Bangalore','Python',25000),
(4,'Divya',23,'Delhi','MySQL',20000),
(5,'Kiran',21,'Mumbai','Java',30000),
(6,'Meena',22,'Hyderabad','Python',25000);

INSERT INTO trainers VALUES
(101,'Ramesh',5,'Python',50000),
(102,'Anita',7,'Java',60000),
(103,'Suresh',4,'MySQL',45000);

INSERT INTO courses VALUES
(201,'Python',6,25000),
(202,'Java',8,30000),
(203,'MySQL',4,20000);

select * from students;
select * from trainers;
select * from courses;

-- VIEW 1 : PYTHON STUDENTS ONLY
create view python_students as
select *from students where course='python';

select *from python_students;

-- view-2 high fee students
create view high_fee_students as
select *from students where fees > 25000;

select *from high_fee_students;

-- view 3 experienced trainers
create view experienced_trainers as
select *from trainers where experience >=5;

select *from experienced_trainers;

-- view 4 short duration courses
create view short_course_view as
select *from courses where duration_months <=6;

select *from short_course_view;

-- view 5 student fee summary
create view total_fee_view as
select  
	   sum(fees) as totalfee ,
	   avg(fees) as avgfee,
       count(fees) as noofstudents -- count(*) as noofstudents
from students;
       
select *from total_fee_view;

show full tables where table_type='VIEW';

drop view total_fee_view;

-- TRANSACTION




