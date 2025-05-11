-- subqueries

select *
from employee_demographics;
where employee_id in 
				( select employee_id
					from employee_salary
                    where dept_id=1)
;                    
                    
select first_name ,salary ,avg(salary)
from employee_salary
group by first_name ,salary;# avg salary us not showing instead same salary is showing

select first_name ,salary ,
(select avg(salary)
from employee_salary)
from employee_salary;

select gender,avg(age),max(age),min(age),count(age)
from employee_demographics
group by gender;

select *
from
(select gender,avg(age),max(age),min(age),count(age)
from employee_demographics
group by gender)as agg_table; 

select gender,avg(`max(age)`)
from
(select gender,avg(age),max(age),min(age),count(age)
from employee_demographics
group by gender)as agg_table
group by gender;

select avg(`max(age)`)
from
(select gender,avg(age),max(age),min(age),count(age)
from employee_demographics
group by gender)as agg_table;

# if not want to use backtick``than simply give column aliases but  it is still alias
select max_age
from
(select gender,
avg(age)as avg_age,
max(age)as max_age,
min(age)as min_age,
count(age)
from employee_demographics
group by  gender) agg_tavle;