create database T388;

use T388;

show databases;
CREATE TABLE Employee (
EmployeeId INT PRIMARY KEY,
FullName VARCHAR(45) NOT NULL,
Department VARCHAR(45) NOT NULL,
Salary float NOT NULL,
Gender VARCHAR(45) NOT NULL,
Age INT NOT NULL
);
select * from Employee;

insert into employee values
(2005,"Kausar","IT",45000,"Female",20);
















delete from employee;
