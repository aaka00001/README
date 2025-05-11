 -- window function 
 
 select gender ,avg(salary) as avg_salary
 from employee_demographics dem
 join employee_salary sal
		on dem.employee_id = sal.employee_id
group by gender;

# similar but with windows functions

 select gender ,avg(salary) over()
 from employee_demographics dem
 join employee_salary sal
		on dem.employee_id = sal.employee_id;
        
 select gender ,avg(salary) over(partition by gender)
 from employee_demographics dem
 join employee_salary sal
		on dem.employee_id = sal.employee_id;
        
 select dem.first_name,dem.last_name,gender ,avg(salary) over(partition by gender)
 from employee_demographics dem
 join employee_salary sal
		on dem.employee_id = sal.employee_id;
        
 select dem.first_name,dem.last_name,gender ,avg(salary) as avg_salary
 from employee_demographics dem
 join employee_salary sal
		on dem.employee_id = sal.employee_id
group by dem.first_name ,dem.last_name ,gender;

 select dem.first_name,dem.last_name,gender ,sum(salary) over(partition by gender )
 from employee_demographics dem
 join employee_salary sal
		on dem.employee_id = sal.employee_id;
        
 select dem.first_name,dem.last_name,gender ,sum(salary) over(partition by gender order by dem.employee_id ) as rolling_total
 from employee_demographics dem# order employee id in background
 join employee_salary sal
		on dem.employee_id = sal.employee_id;
        
#only with window function

 select dem.employee_id,dem.first_name,dem.last_name,gender ,salary,
 row_number() over()
 from employee_demographics dem# order employee id in background
 join employee_salary sal
		on dem.employee_id = sal.employee_id;
        
 select dem.employee_id,dem.first_name,dem.last_name,gender ,salary,
 row_number() over(partition by gender)
 from employee_demographics dem# order employee id in background
 join employee_salary sal
		on dem.employee_id = sal.employee_id;
        
 select dem.employee_id,dem.first_name,dem.last_name,gender ,salary,
 row_number() over(partition by gender order by salary desc)
 from employee_demographics dem# order employee id in background
 join employee_salary sal
		on dem.employee_id = sal.employee_id;

select dem.employee_id,dem.first_name,dem.last_name,gender ,salary,
 row_number() over(partition by gender order by salary desc) as row_num,
 rank() over(partition by gender order by salary desc) as rank_num
  from employee_demographics dem# order employee id in background
 join employee_salary sal
		on dem.employee_id = sal.employee_id;#next number positionlly
        
select dem.employee_id,dem.first_name,dem.last_name,gender ,salary,
 row_number() over(partition by gender order by salary desc) as row_num,
 rank() over(partition by gender order by salary desc) as rank_num,
 dense_rank() over(partition by gender order by salary desc) as dense_num
  from employee_demographics dem# order employee id in background
 join employee_salary sal
		on dem.employee_id = sal.employee_id;# next number of duplicate is next of repeated number
        