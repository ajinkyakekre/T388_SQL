create database FK_T388;
use FK_T388;
create Table Students
(ID int primary key auto_increment,
name Varchar(20));
insert into students values
(1,"Kunal");

desc students;

select* from students;

Insert into Students (name) values
("Suman");

Create table info
(id int,Scores int,
foreign key (id) references students(id));

insert into info values (1,300),(2,400);

select* from infoprojectsprojects;




Create database T388_FK_PK;
use T388_FK_PK;

CREATE TABLE Employee 
( ID INT PRIMARY KEY, Name VARCHAR(100) NOT NULL, 
Age INT, 
Salary DECIMAL(10, 2) );


CREATE TABLE Project ( ProjectID INT PRIMARY KEY, 
ProjectName VARCHAR(100) NOT NULL, 
ID INT, FOREIGN KEY (ID) REFERENCES Employee(ID) 
ON UPDATE CASCADE ON DELETE CASCADE );

INSERT INTO Employee (ID, Name, Age, Salary) VALUES 
(101, 'Alice Smith', 29, 75000.00), 
(102, 'Bob Jones', 34, 82000.50), 
(103, 'Charlie Brown', 41, 95000.00), 
(104, 'Diana Prince', 26, 68000.00);

INSERT INTO Project (ProjectID, ProjectName, ID) VALUES 
(1, 'Website Redesign', 101), 
(2, 'Cloud Migration', 101), 
(3, 'Mobile App Launch', 102), 
(4, 'Data Analytics Pipeline', 103);


Select * from Employee;
Select * from Project;

update  employee set id=500 where id=101;
update Project set projectname="Hello" where id=666;
insert into employee value (666,"Kamlesh",34,500000);

use t388;

-- WINDOW FUNCION (ROW_NUMBER() OVER (PARTITION BY"department")
select 
EmployeeID,FullName,Department,Salary,
ROW_Number() OVER (PARTITION BY DEPARTMENT) AS RankInDepartment
From  Employee;

select 
*,
ROW_Number() OVER (PARTITION BY DEPARTMENT) AS RankInDepartment
From  Employee;

-- ROW_NUMBER() OVER (PARTITION BY"Salary")

select 
EmployeeID,FullName,Department,Salary,
ROW_Number() OVER (PARTITION BY Salary) AS RankInDepartment
From  Employee order by salary asc;


select 
EmployeeID,FullName,Department,Salary,
ROW_Number() OVER (PARTITION BY Salary) AS RankInDepartment
From  Employee ;



-- RANK() OVER (ORDER BY"Salary")

select 
EmployeeID,FullName,Department,Salary,
Rank() OVER (ORDER BY Salary) AS RankInDepartment
From  Employee ;


-- Dense_Rank (it will not skip the "MIDDLE" rank if there are 2 common ranks)

select 
EmployeeID,FullName,Department,Salary,
dense_Rank() OVER (ORDER BY Salary) AS RankInDepartment
From  Employee ;

-- Aggregate Window Function 

Select department,sum(salary),avg(salary) from employee group by department;


select 
EmployeeID,FullName,Department,Salary,
AVG(Salary) OVER (Partition BY Department) AS DepartmentAVGsalary
From  Employee ;


select 
EmployeeID,FullName,Department,Salary,
AVG(Salary) OVER (PARTITION by Department) AS DepartmentAVGsalary,
SUM(Salary) OVER (PARTITION by Department) AS DepartmentTotalsalary
From  Employee ;

select 
EmployeeID,FullName,Department,Salary,
AVG(Salary) OVER (PARTITION by Department) AS DepartmentAVGsalary,
SUM(Salary) OVER (PARTITION by Department) AS DepartmentTotalsalary
From  Employee 
ORDER BY DEPARTMENT, SALARY DESC;


select 
EmployeeID,FullName,Department,Salary,
AVG(Salary) OVER (PARTITION by Department) AS DepartmentAVGsalary,
SUM(Salary) OVER (PARTITION by Department) AS DepartmentTotalsalary
From  Employee 
where gender="Male"
ORDER BY DEPARTMENT, SALARY DESC;


select 
EmployeeID,FullName,Department,Salary,
AVG(Salary) OVER (PARTITION by Department) AS DepartmentAVGsalary,
SUM(Salary) OVER (PARTITION by Department) AS DepartmentTotalsalary
From  Employee 
where gender="Female"
ORDER BY DEPARTMENT, SALARY DESC;


-- LAG FUNCTION

select
EmployeeID,FullName,Department,Salary,Age,
LAG(Salary , 1,0) OVER ( ORDER BY Salary) AS PreviousEmployeeSalarybyage
From  Employee
ORDER BY Salary ;



select
EmployeeID,FullName,Department,Salary,age,
LAG(Salary, 1,0) OVER (PARTITION BY Department ORDER BY Age ASC ) AS PreviousEmployeeSalarybyage
From  Employee
ORDER BY DEPARTMENT ;


select
EmployeeID,FullName,Department,Salary,Age,
LAG(Salary , 1,0) OVER ( ORDER BY Salary) AS PreviousEmployeeSalarybyage
From  Employee
ORDER BY Salary ;


-- LEAD FUNCTION


select
EmployeeID,FullName,Department,Salary,Age,
Lead(Salary , 1,0) OVER ( ORDER BY Salary) AS PreviousEmployeeSalarybyage
From  Employee
ORDER BY Salary ;


select
EmployeeID,FullName,Department,Salary,Age,
Lead(Salary , 2,0) OVER ( ORDER BY Salary) AS PreviousEmployeeSalarybyage
From  Employee
ORDER BY Salary ;


select
EmployeeID,FullName,Department,Salary,Age,
Lead(Salary , 4,"NODATA") OVER ( ORDER BY Salary) AS PreviousEmployeeSalarybyage
From  Employee
ORDER BY Salary ;