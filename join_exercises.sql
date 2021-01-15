USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;



# NUM 2
SELECT dept_name AS department_name,
                CONCAT( employees.first_name,' ', employees.last_name)AS Department_manager
FROM departments
        Join dept_manager
             ON departments.dept_no = dept_manager.dept_no
        Join employees
        ON dept_manager.emp_no = employees.emp_no
WHERE to_date > now();



#NUM 3
SELECT dept_name AS department_name,
                CONCAT( employees.first_name,' ', employees.last_name)AS Department_manager
FROM departments
         Join dept_manager
              ON departments.dept_no = dept_manager.dept_no
         Join employees
              ON dept_manager.emp_no = employees.emp_no
WHERE employees.gender = 'f' AND to_date > now();





# NUM 4

SELECT title, COUNT(*) AS count
FROM departments
JOIN dept_emp
    ON departments.dept_no = dept_emp.dept_no
    JOIN titles
        on dept_emp.emp_no = titles.emp_no
    Where dept_emp.to_date > now() AND
          titles.to_date > now() AND
          departments.dept_no = 'd009'
GROUP BY title;





# NUM 5
SELECT  dept_name AS department_name,
       CONCAT( employees.first_name,' ', employees.last_name)AS Department_manager,
       salary
FROM employees
         Join dept_manager AS dep_man
             on dep_man.emp_no = employees.emp_no
        JOIN employees.departments
            on employees.departments.dept_no = dep_man.dept_no
        JOIN employees.salaries AS emp_sal
            ON  emp_sal.emp_no = employees.emp_no
        WHERE current_date() BETWEEN dep_man.from_date AND dep_man.to_date
AND current_date() BETWEEN emp_sal.from_date AND emp_sal.to_date;



