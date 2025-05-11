-- where clause
select * from employee_salary ;

select * from employee_salary
where salary< 50000;

select * from employee_demographics
where gender ='female'
and gender ='male';

select *from employee_demographics 
where (first_name='leslie' and age=44) or age>55;

select *from employee_demographics
where first_name like '%jer%';

select *from employee_demographics
where first_name like 'a__%';