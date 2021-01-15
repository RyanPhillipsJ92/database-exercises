USE employees;

select *
from employees
where hire_date IN (

    select hire_date
    from employees
    where emp_no = '101010'
);


select *
from titles
where emp_no IN (
    select emp_no
    from employees
    where first_name = 'Aamod'
);

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE dept_manager.to_date > now()
    AND employees.gender = 'f'
    );


SELECT dept_name
FROM departments
WHERE dept_no IN (

    SELECT dept_manager.dept_no
    FROM dept_manager
    WHERE emp_no IN (

        SELECT emp_no
        FROM employees
        WHERE employees.gender ='f'
        )
    AND dept_manager.to_date > now()
);


select first_name, last_name
from employees
where emp_no in (
    select emp_no
    from salaries
    where salary = '158220'
);