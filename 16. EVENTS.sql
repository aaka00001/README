-- EVENTS

select *
from employee_demographics;

DELIMITER $$
create event delete_retires
ON SCHEDULE EVERY 30 SECOND
DO 
BEGIN
DELETE
FROM employee_demographics
where age>=60;
END
DELIMITER ;

# COUD'T CREATE EVENT AT ALL HOW TO FIX IT
SHOW VARIABLES LIKE 'event%';