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
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

delete from Employee where	gender="Male";
delete from employee where age>"25";
delete from employee where salary<"46000";

truncate employee;

Alter table	Employee
Add Location varchar(10);

Alter table	Employee
Add Bonus float after Salary;

Alter table	Employee
Add Title varchar(5) First;

Desc Employee;


select * from employee;

Alter table employee modify Fullname varchar(35);
desc employee; -- This is for comment
describe employee;
Alter table employee change column location Address varchar(36);

Alter table employee change column address Adress varchar(40);
update employee set Address ="Thane";
Alter table employee
DROP Adress,Drop Title,Drop bonus;
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

Alter table	Employee
Add Location varchar(10);

Alter table	Employee
Add Bonus float after Salary;

Alter table	Employee
Add Title varchar(5) First;

Alter table employee change column Location Address varchar(40);
update employee set Address ="Thane";

update employee set Address="Dombivli"
where department ="IT";

update employee set Title="Mr." where Gender="Male";
update employee set Title="Mrs." where Gender="Female";
update employee set Bonus=Salary*0.05;


delete from employee;
