--1) List the following details of each employee: employee number, last name, first name, sex, and salary.

Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary from "Employees" as e
Join "Salaries" as s on e.emp_no = s.emp_no;

--2) List first name, last name, and hire date for employees who were hired in 1986.

Select first_name, last_name, hire_date from "Employees" where hire_date like '%/%/1986';

--3) List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

Select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name from "Department" as d
Join "Department_Managers" as dm on d.dept_no = dm.dept_no
Join "Employees" as e on dm.emp_no = e.emp_no;

--4) List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

Select de.emp_no, e.last_name, e.first_name, d.dept_name from "Employees" as e
Join "Department_Employees" as de on e.emp_no = de.emp_no
Join "Department" as d on de.dept_no = d.dept_no;

--5) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select first_name, last_name, sex from "Employees" where first_name = 'Hercules' and last_name like 'B%';

--6) List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select de.emp_no, e.last_name, e.first_name, d.dept_name from "Employees" as e 
Join "Department_Employees" as de on e.emp_no = de.emp_no
Join "Department" as d on de.dept_no = d.dept_no where dept_name = 'Sales';

--7) List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

Select de.emp_no, e.last_name, e.first_name, d.dept_name from "Employees" as e 
Join "Department_Employees" as de on e.emp_no = de.emp_no
Join "Department" as d on de.dept_no = d.dept_no where dept_name = 'Sales' or dept_name = 'Development';

--8) List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
Select last_name, count(last_name) as ln_count from "Employees" 
group by last_name 
order by ln_count desc;