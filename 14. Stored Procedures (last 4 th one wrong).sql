-- stored procedures

select*
from employee_salary
where salary>=50000;  


# database name for specificiations but not that important
# use parks_and_recreation
create procedure large_salaries()
select*
from employee_salary
where salary>=50000;

call large_salaries(); 


create procedure large_salaries2()
select*
from employee_salary
where salary>=50000;
select*
from employee_salary
where salary>=10000;

DELIMITER $$
create procedure large_salaries3()
BEGIN
select*
from employee_salary
where salary>=50000;
select*
from employee_salary
where salary>=10000;
END $$
DELIMITER ;

call large_salaries3();


DELIMITER $$
create procedure large_salaries5( black int)
BEGIN
select salary
from employee_salary
where employee_id = black
;
END $$
DELIMITER ;

CALL large_salaries5(1);


DELIMITER $$
create procedure large_salaries4(black_to int)
BEGIN
select salary
from employee_salary
where employee_id = black_io
;
END $$
DELIMITER ;

CALL large_salaries4(1);