use employees;


SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name DESC;


SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date Between '1990-01-01' AND '1999-12-31';

SELECT first_name, last_name, hire_date
FROM employees
WHERE birth_date LIKE '%12-25%';

SELECT first_name, last_name, hire_date
FROM employees
WHERE last_name LIKE '%q%';


SELECT emp_no, first_name, last_name
FROM employees
WHERE gender = 'M'
  AND(
        first_name IN ('Irena','Vidya','Maya')
    );



SELECT first_name, last_name, hire_date
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e';

SELECT first_name, last_name, hire_date
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';


SELECT first_name, last_name, hire_date
FROM employees
WHERE birth_date LIKE '%12-25%'
  AND hire_date Between '1990-01-01' AND '1999-12-31'
ORDER BY birth_date ASC ,hire_date DESC;

SELECT first_name, last_name, hire_date
FROM employees
WHERE last_name LIKE '%q%'
  AND NOT last_name LIKE '%qu%';
