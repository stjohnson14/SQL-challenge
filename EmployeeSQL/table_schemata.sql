create table departments (
dept_no varchar (20) PRIMARY KEY,
dept_name varchar (255)
);

create table employees_info (
emp_no int,
emp_title varchar (90),
birth_date varchar (90),
first_name varchar (90),
last_name varchar (90),
sex varchar (90),
hire_date varchar (90)
);

create table manager_dept (
dept_no varchar (20),
emp_no int
);

create table employees_dept (
emp_no integer,
dept_no varchar(20),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

create table titles (
title_id varchar (90),
title varchar (90)
);

create table salaries (
emp_no int,
salary varchar (90)
);