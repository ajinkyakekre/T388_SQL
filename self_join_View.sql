-- Self Join

create Database self_T388;
Use self_t388;
select * from Employee_manager_for_SQL;

Select e.EMP_id,e.Emp_name as Employee ,m.emp_name as Manager 
from Employee_manager_for_SQL as E
left join Employee_manager_for_SQL as M
on m.Emp_id = e.manager_id ;

-- Cross Join

select * from chess_team_a;
select * from chess_team_b;


select id, tram_b_id,a.name,b.name
from
chess_team_a as A
cross join 
chess_team_b as b;

select id as a_id, tram_b_id as b_id,a.name,b.name
from
chess_team_a as A
cross join 
chess_team_b as b;


-- VIEW and CTE

create view T388_view1 as 

select id, tram_b_id,a.name as name_a,b.name as name_b
from
chess_team_a as A
cross join 
chess_team_b as b;

Select * from T388_view1 ;

-- CTE

with t388_CTE as 
(select id, tram_b_id,a.name as name_a,b.name as name_b
from
chess_team_a as A
cross join 
chess_team_b as b)
select * from t388_cte;