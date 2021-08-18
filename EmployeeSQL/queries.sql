-- Emp no, last name, first name, sex, salary

select info.emp_no, info.last_name, info.first_name, info.sex, s.salary
from employees_info as info
inner join salaries as s on
info.emp_no = s.emp_no; 

-- First, last, hire date for employees hired in 1986

select first_name, last_name, hire_date
from employees_info 
where hire_date LIKE '%/1986';

-- list manager of each dept with dept no, dept name, emp no, last, first

select m.dept_no, d.dept_name, m.emp_no, info.last_name, info.first_name, info.sex
from employees_info as info
inner join manager_dept as m on info.emp_no = m.emp_no
inner join departments as d on d.dept_no = m.dept_no;
 

--list dept of each employee with emp no, last, first, dept name

select info.emp_no, info.last_name, info.first_name, d.dept_name
from employees_info as info
inner join employees_dept as ed on info.emp_no = ed.emp_no
inner join departments as d on ed.dept_no = d.dept_no


-- first, last, sex, for those with name Hercules and last name beginning with B

select first_name, last_name, sex
from employees_info
Where first_name = 'Hercules' and last_name like 'B%'

-- list all employees in sales, emp_no, last, first, dept name

select info.emp_no, info.first_name, info.last_name, d.dept_name
from employees_info as info
inner join employees_dept as ed on info.emp_no = ed.emp_no
inner join departments as d on ed.dept_no = d.dept_no
where d.dept_name = 'Sales'

-- list all employees in sales and development, emp no, last, first, dept name

select info.emp_no, info.first_name, info.last_name, d.dept_name
from employees_info as info
inner join employees_dept as ed 
on (info.emp_no = ed.emp_no)
inner join departments as d on 
(ed.dept_no = d.dept_no)
where d.dept_name = 'Sales'
OR 
d.dept_name = 'Development'

-- in descending order, list frequency count of employee last names ie how many employees share each last name

select last_name, count(last_name) as Frequency
from employees_info
group by last_name
ORDER BY COUNT(last_name) DESC

