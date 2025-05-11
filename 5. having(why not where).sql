-- having vs where

select gender from employee_demographics
group by gender;

select occupation ,avg(salary)
from employee_salar
where occupation like '%manager%'
group by occupation
having avg(salary)>50000;