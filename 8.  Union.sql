-- unions

select *
from employee_demographics
union
select*
from employee_salary;

select first_name, last_name
from employee_demographics
union all
select first_name,last_name
from employee_salary;

select first_name, last_name,'old'
from employee_demographics
where age >40#suppose to fire people to maintain budget
union 
select first_name, last_name,'old lady'
from employee_demographics
where age >40 and gender='female'
union
select first_name, last_name,'high paying employee'
from employee_salary
where salary >70000
order by first_name, last_name;