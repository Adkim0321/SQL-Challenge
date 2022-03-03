-- Question 1
select e.emp_no,
	first_name,
	last_name,
	sex, 
	salary
from employees e

join salaries s
  on s.emp_no = e.emp_no;

-- Question 2
select first_name, last_name, hire_date 
from employees
where hire_date between '1/1/1986' and '12/31/1986'

-- Question 3
select count(emp_no) from dept_manager 
select count(distinct(emp_no)) from dept_manager

select * from departments
select * from departments

-- department number, department name, the manager's employee number, last name, first name.
-- department manager, departments, department manager, employees, employees

select d.dept_no,
	dept_name,
	e.emp_no,
	last_name,
	first_name
from dept_manager d

join departments dp
  on dp.dept_no = d.dept_no
  
join employees e
	on e.emp_no = d.emp_no;

-- Question 4
-- employee number, last name, first name, and department name.
select * from dept_emp
select 	e.emp_no,
	last_name,
	first_name,
	dept_name
from employees e

join dept_emp d
	on d.emp_no = e.emp_no

join departments dp
	on dp.dept_no = d.dept_no;
	
-- question 5
-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and LEFT(last_name, 1) = 'B'

-- question 6
-- List all employees in the Sales department, including their employee number, last name, first name, and department name
select * from departments
select 	e.emp_no,
	last_name,
	first_name,
	dept_name
from employees e

join dept_emp d
	on d.emp_no = e.emp_no

join departments dp
	on dp.dept_no = d.dept_no
where dept_name = 'Sales';

-- Question 7
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select * from departments
select 	e.emp_no,
	last_name,
	first_name,
	dept_name
from employees e

join dept_emp d
	on d.emp_no = e.emp_no

join departments dp
	on dp.dept_no = d.dept_no
	
where dept_name = 'Sales' or dept_name = 'Development';

-- Question 8
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc;