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





Use t388;
create table Kisan_Info
(ID int unique not null,
name varchar(50) unique not null,
age int check (age>=18),
email_ID varchar(40) default "dummy@gmail.com");

desc Kisan_info;

Insert into Kisan_info values
(2123,"Mohan Shinde",22,"mohan@gmail.com"),
(2341,"Ram J",19,"");

Insert into Kisan_info values
(2312,"Rahul Pal",26,Default);

select * from Kisan_Info;



alter table Kisan_info modify age int check (age>=18);

Insert into Kisan_info(ID,name,age) values
(553,"Pradeep K",33);


select distinct department from employee;

select distinct gender from employee;


select * from employee
where department ="IT" or department ="finance";

select * from employee
where department in ("It","finance");
show tables;

select * from employee
order by Fullname;

select * from employee order by age desc ;
select * from employee order by age asc;

select * from employee where gender ="Male" order by fullname;


select department from employee group by Department;

select department,count(EmployeeId) from employee group by department;
select gender,count(EmployeeId) from employee group by gender;
select department , sum(salary) from employee group by department ;
select department , avg(salary) from employee group by department;
select department , avg (salary) as Avg_salary ,sum(salary) as Total_Salary from employee group by Department;

Select Avg(salary) from employee ;

select department , count(department) from employee group by department;
select department , count(gender)from employee group by department;
select department , count(*) from employee group by department;

select department , avg(age),count(*) from employee group by department having avg(age)<27;


CREATE TABLE Projects (
ProjectId INT PRIMARY KEY AUTO_INCREMENT,
ProjectName VARCHAR(200) NOT NULL,
EmployeeId INT,
StartDate DATETIME,
EndDate DATETIME
);


INSERT INTO Projects VALUES

(1,'Develop Ecommerse Website from
scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),

(2,'WordPress Website for our company',
1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),

(3,'Manage our Company Servers', 1007,
NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),

(4,'Hosting account is not working', 1009,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),

(5,'MySQL database from my desktop
application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),

(6,'Develop new WordPress plugin for my business
website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),

(7,'Migrate web application and database to
new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),

(8,'Android Application development', 1004,
NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),

(9,'Hosting account is not working', 1001,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),

(10,'MySQL database from my desktop
application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),

(11,'Develop new WordPress plugin for my
business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY));

select * from projects;
select *,datediff (enddate,startdate) as Duration from projects;

select now();

select * from projects where datediff (enddate,startdate)=45;

ALTER TABLE projects ADD Duration int;
Update projects set duration = datediff (enddate,startdate);

select duration , count(*) from projects group by duration;

select duration , count(*) from projects group by duration having count(*)>=2 ;

select duration , count(*) from projects group by duration having count(*)>=2 limit 3 ;

select duration , count(*) from projects 
where duration >=20
group by duration 
having count(*)>=2 
order by duration desc limit 1 ;

select duration , count(*) from projects 
where duration >=20
group by duration 
having count(*)>=2 
order by duration desc ;


select * from employee order by EmployeeID desc limit 5;


select * from employee limit 2,3;

select * from employee;

select * from employee limit 3,5;

select distinct department from employee;
select distinct gender from employee;
select distinct age from employee;

select * from projects;
select * from projects where employeeid is null;
select * from projects where employeeid is not null;

desc projects;
select * from projects where employeeid is null;

Update projects set employeeid = 1003 where projectid =6;

-- IN , BETWEEN AND LIKE

select * from employee where age between 25 and 27 ;

select * from employee where employeeid between 1003 and 1007;

select * from employee where employeeid in (1003,1005,1007);

select * from employee where employeeid=1003
or employeeid=1005
or employeeid=1007;

select * from employee where age in(23,28)
and department= "IT"
and employeeid IN (1008,1001);

-- Like Operator

Select * from employee where fullname like "m%";

use t388;
Select * from simple;

select * from simple where fullname like "a%";
select * from simple where fullname like "_u%";
select * from simple where fullname like "a%t";

select * from simple where fullname not like "a%t";


select avg (salary) from employee;
select sum(salary) from employee;
select max(salary) from employee ;
select min(salary) from employee ;
select count(salary) from employee; 
select count(*) from employee;

select count(*) , avg(salary),sum(salary) from employee;

select count(*) as Total_emp, avg(salary) as Average_Sal,sum(salary) as Total_Salary from employee;


-- Math Function

Select abs(-35);
select abs (300-800);
select abs (6*(-7));
select (6*(-7));

select datediff(Startdate,enddate) from projects ;
select abs(datediff(Startdate,enddate)) from projects ;

select abs(datediff(Startdate,enddate)) as Duration 
from projects ;


Select mod (12,7);

select mod (12,3);

Select ceil(33.8);
select floor(33.8);

Select ceil(33);
select floor(33);

select truncate(123456.8765432,3);

select truncate(123456.8765432,1);
select truncate(123456.8765432,0);

select truncate(123456.8765432,-2);

