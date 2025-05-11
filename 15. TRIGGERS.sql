-- triggers and events

select* from employee_demographics;

select * from employee_salary;

DELIMITER $$
create trigger employee_insert
	after insert on employee_salary
    for each row
begin
	insert into employee_demographics (employee_is ,first_name ,last_name)
	values(new.employee_id ,new.first_name,new.last_name);
end $$
DELIMITER ;

insert into employee_salary (employee_id, first_name,last_name,occupation,salary,dept_id)
values(13, 'aakash', 'rai' ,'entertainment 00001 CEO ',1000000 ,null);

#since you messed up lets drop and recreate trigger

SHOW TRIGGERS LIKE 'employee_salary';

SHOW TRIGGERS;

SHOW CREATE TRIGGER employee_insert;

#IF THE TRIGGER NAME HAS SPECIAL CHARACTER WRAP IT UP IN 	``

DROP TRIGGER IF EXISTS `emloyee_insert`;


DELIMITER $$
create trigger employee_insert
	after insert on employee_salary
    for each row
begin
	insert into employee_demographics (employee_id ,first_name ,last_name)
	values(new.employee_id ,new.first_name,new.last_name);
end $$
DELIMITER ;
# messed up created two triggers
insert into employee_salary (employee_id, first_name,last_name,occupation,salary,dept_id)
values(13, 'aakash', 'rai' ,'entertainment 00001 CEO ',1000000 ,null);


