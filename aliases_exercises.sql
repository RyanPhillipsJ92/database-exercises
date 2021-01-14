USE employees;

SELECT CONCAT(emp_no, ' ', last_name) AS full_name, birth_date AS DOB
FROM employees AS emp
GROUP BY full_name, DOB
ORDER BY full_name
LIMIT 10;