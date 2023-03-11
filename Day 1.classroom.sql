-- Create new database called day 1.
create database day1;

-- Create new table student.

use day1;
create table Student
(
roll_no int,
student_name varchar(10),
dob date,
course varchar(20),
score float
)

select * from Student;

-- To list the structure of table.

desc Student;

use day1;

create table Employee
(
emp_id int,
e_name varchar(20),
doj date,
department varchar(20),
salary bigint
);

select * from Employee;

-- Altering table after creation.

alter table Student add genders char(1), add contact_no int;
select * from Student;

-- Dropping columns.

alter table Student drop genders;
describe Student;

-- Add new attribute age to Student after the course column. 

alter table Student add age int after course;

select * from Student;

-- Modify the data type of age in Student.

alter table Student modify age float;

desc Student;

-- Renaming the columns.

alter table Student rename column score to marks;

select * from Student;

-- Using change.

alter table Student change marks score int;

desc Student;

-- Dropping table.

drop table Student;

-- DML. 

-- Inserting values into Table.

-- Inserting all the data.

insert into employee values
(101,'AAA','2022-09-12','sales',5000)

-- Inserting only specific values.

insert into employee
(emp_id,e_name,doj,salary)
values
(102,'BBB','2020-01-01',7000)

select * from employee;

insert into employee
values(103,'CCC',NULL,NULL,8000)

alter table employee modify department varchar(15) 
after e_name

desc employee

select * from employee;

insert into employee values
(104,'DDD','HR','2020-02-01',8500),
(105,'EEE','Sales','1995-03-04',9000);

select * from employee;

update employee set salary = 15000 where e_name='AAA';

select * from employee;

update employee set department = 'marketing' where e_name='BBB';

select * from employee;

update employee set salary = salary + (salary*0.2);

select * from employee;

select * from employee where salary>5000;

-- Replacing null values.

update employee set department ='Finance'
where department is NULL;

select * from employee;

-- Q. Update the department to operation where the employee currently working in sales and earning salary less than 10000.

update employee set department = 'Operation' 
where salary<10000 and department='Sales';

-- Deleting records from the table.

select * from employee;

select * from employee where e_name='AAA';

delete from employee where department='Finance';

select * from employee;