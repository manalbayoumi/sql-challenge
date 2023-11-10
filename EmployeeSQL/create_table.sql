drop table if exists salaries;
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists departments;
drop table if exists employees;
drop table if exists titles;

CREATE TABLE departments
(dept_no varchar(5) not null,
dept_name varchar(25) not null,
primary key(dept_no)
);

CREATE TABLE titles
(title_id varchar(5) not null,
title varchar(25) not null,
primary key(title_id)
);

CREATE TABLE employees
(
  emp_no int not null,
  emp_title_id varchar(10) not null,
  birth_date timestamp not null,
  first_name varchar(25) not null,
  last_name varchar(25) not null,
  sex varchar(1) not null,
  hire_date timestamp not null,
  primary key(emp_no),
  constraint employees_fk_title
    foreign key(emp_title_id) references titles(title_id)
);

CREATE TABLE salaries
(emp_no int not null,
salary int not null,
primary key(emp_no),
constraint salaries_fk_emp
  foreign key(emp_no) references employees(emp_no) 
);

CREATE TABLE dept_emp
(emp_no int not null,
dept_no varchar(5) not null,
primary key(emp_no, dept_no),
constraint salaries_fk_emp
  foreign key(emp_no) references employees(emp_no), 
  foreign key(dept_no) references departments(dept_no) 
);

CREATE TABLE dept_manager
(dept_no varchar(5) not null,
emp_no int not null,
primary key(dept_no, emp_no),
constraint dept_manager_fk
  foreign key(dept_no) references departments(dept_no),
  foreign key(emp_no) references employees(emp_no) 
);