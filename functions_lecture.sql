USE employees

SELECT CONCAT(first_name, ' ', last_name)
FROM employees;

SELECT CONCAT(first_name, ' ', last_name)AS 'All Employees'
FROM employees;

SELECT first_name, last_name
FROM employees
Where last_name Like 'A%a'
AND last_name NOT LIKE '%q%';


# RETURNS DATE_TIME
SELECT Now();

# RETURNS RESULT AS DATE
SELECT CURDATE();

# RETURNS result as time
SELECT CURTIME();
SELECT current_time();

SELECT UNIX_TIMESTAMP();

SELECT CONCAT(
               'Teaching people to code for ',
               UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
               ' seconds'
           );