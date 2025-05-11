-- Tempoerary Tables

create temporary table temp_table
(first_naame varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

select *
from temp_table;


insert into temp_table
values('aakash','rai', 'jphn wick');


select* from employee_salary;


create temporary table salary_over_50k
select *
from employee_salary
where salary>= 50000;


select* from salary_over_50k;
