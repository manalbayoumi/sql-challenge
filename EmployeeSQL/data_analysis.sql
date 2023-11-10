
-- question 1
SELECT employees.emp_no,last_name,first_name,sex,salary from employees
join salaries on employees.emp_no=salaries.emp_no
-- question 2
SELECT first_name,last_name,hire_date from employees
where date_part('year',hire_date)= '1986'
-- question 3
select departments.dept_no,dept_name,employees.emp_no,last_name,first_name from departments
join dept_manager
on departments.dept_no=dept_manager.dept_no
join employees 
on dept_manager.emp_no=employees.emp_no
-- question 4
select dept_emp.dept_no,employees.emp_no,last_name,first_name,dept_name from dept_emp
join employees
on dept_emp.emp_no=employees.emp_no
join departments
on departments.dept_no=dept_emp.dept_no
-- question 5
select first_name, last_name,sex from employees
where first_name = 'Hercules' and last_name like 'B%'
-- question 6
SELECT employees.emp_no,last_name,first_name from employees
JOIN dept_emp
on employees.emp_no=dept_emp.emp_no
JOIN departments
on dept_emp.dept_no= departments.dept_no
where dept_name='Sales'
-- question 7
SELECT employees.emp_no,last_name,first_name,dept_name from employees
JOIN dept_emp
on employees.emp_no=dept_emp.emp_no
JOIN departments
on dept_emp.dept_no= departments.dept_no
where dept_name='Sales'or dept_name='Development'
-- question 8
SELECT last_name,count(*) from employees
GROUP BY last_name 
ORDER BY count(*) DESC