USE employees;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT first_name, last_name, hire_date
FROM employees
WHERE birth_date LIKE '%12-25%'
  AND hire_date Between '1990-01-01' AND '1999-12-31'
ORDER BY birth_date ASC ,hire_date DESC
LIMIT 5 OFFSET 45;