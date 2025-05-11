-- group by

select gender from employee_demographics
group by gender;

select gender from employee_demographics;

select distinct gender from employee_demographics;

# selectrom group by gender;

select occupation from employee_salary
group by occupation;

select occupation,salary from employee_salary
 group by occupation ,salary;

select *from employee_salary;
select * from employee_demographics;

select gender,avg(age), max(age),min(age),count(age)
from employee_demographics
group by gender;

-- rder by 

select * from employee_demographics
order by 5, 4 ;

