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
