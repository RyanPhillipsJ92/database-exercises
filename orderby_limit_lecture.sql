use employees;

SELECT first_name,last_name
from employees
ORDER BY last_name DESC, last_name, birth_date;

SELECT  * From employees
LIMIT 15;



SELECT first_name,last_name, birth_date
from employees
ORDER BY birth_date;
