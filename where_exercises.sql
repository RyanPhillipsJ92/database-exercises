use employees;


SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');


SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date Between '1990-01-01' AND '1999-12-31';

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%12-25%';

SELECT first_name, last_name, hire_date
FROM employees
WHERE last_name LIKE '%q%';


SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');