select * 
from parks_and_recreation.employee_demographics;

select first_name,
last_name,
birth_date,
age,
(age+10)*10
from employee_demographics;
#PENDAS

select distinct first_name
from employee_demographics;

select distinct gender
from employee_demographics;

select distinct first_name,gender
from employee_demographics;


