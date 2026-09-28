select n.ID as Name_ID,s.ID as Salary_ID,name,salary
from innerjoin_name_t388 as N
left join
innerjoinsalary_t388 as S
on s.ID =n.ID
Union
select n.ID as Name_ID,s.ID as Salary_ID,name,salary
from innerjoin_name_t388 as N
right join
innerjoinsalary_t388 as S
on s.ID =n.ID ;