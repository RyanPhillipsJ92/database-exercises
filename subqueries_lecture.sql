USE employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;


SELECT emp_no
FROM dept_manager
WHERE dept_no IN (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Sales'
    )
AND to_date > now();







SELECT CONCAT(
               (
                   SELECT MAX(salary)
                   FROM salaries
                   Where emp_no = 10001
               ),
               ' ',
               (
                   SELECT MAX(salary)
                   FROM salaries
                   Where emp_no = 10001
               )
           );


# find first name and last name of all department managers

# inner join version
SELECT e.first_name, e.last_name
FROM employees AS e
join dept_manager AS dm on e.emp_no = dm.emp_no;

# Subquery version
SELECT first_name,last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager
    );

