use t388_db;
show tables;
-- ORDER BY CLAUSE
select * from employee order by department ;
select * from employee where gender ="Male" order by fullname desc;



-- W G H O 
-- WHERE , GROUP BY -[HAVING] , ORDER BY
-- GROUP BY CLAUSE
select department,count(EmployeeId) from employee group by department;
select gender,count(EmployeeId) from employee group by gender;
select department,sum(salary) from employee group by department;
select department,avg(salary) from employee group by department;
select department,avg(salary), sum(salary) from employee group by department;

select department,avg(salary) as Avg_Salary, sum(salary) as Total_Salary from employee group by department;
select * from employee where age = 25;

select department,count(salary) from employee group by department;
select department,count(gender) from employee group by department;
select department,avg(age),count(*) from employee group by department having avg(age) <27 ;
select department,avg(age),count(*) from employee group by department ;







-- Having Clause ( along with Group By Clause)

CREATE TABLE Projects (
ProjectId INT PRIMARY KEY AUTO_INCREMENT,
ProjectName VARCHAR(200) NOT NULL,
EmployeeId INT,
StartDate DATETIME,
EndDate DATETIME
);

delete from projects where projectid = 12;
select *  from projects;

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

select *,datediff(enddate, startdate) as Duration from projects
where datediff(enddate, startdate) = 45;
select *,datediff(enddate, startdate) as Duration from projects;

alter table projects add Duration int ;
select * from projects;
update projects set duration = datediff(enddate,startdate);


select now();
select duration,count(*)   from projects group by duration;
select duration,count(*)   from projects group by duration having count(*)>=2 ;
select duration,count(*) from projects 
where duration>=20 
group by duration 
having count(*)>=2
order by duration desc;

select * from employee  order by EmployeeId desc limit 5;

select * from employee limit 3,5;


