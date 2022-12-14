--Listing the employee number, last name, first name, sex, and salary of each employee.
select emp_no, last_name, first_name, sex, salary from employees
left join salaries using (emp_no);

--Listing the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date from employees where hire_date between '1995-12-31' and '1997-01-01';

--Listing the manager of each department along with their department number, department name, employee number, last name, and first name.
select dept_no,dept_name, emp_no,last_name,first_name from dept_manager
left join employees using (emp_no)
left join departments using (dept_no);

--Listing the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select dept_no, emp_no, last_name, first_name, dept_name from employees
left join dept_emp using (emp_no)
left join departments using (dept_no);

--Listing first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name, last_name, sex from employees where first_name = 'Hercules' and last_name like 'B%';

--Listing each employee in the Sales department, including their employee number, last name, and first name.
select emp_no, last_name, first_name from employees
left join dept_emp using (emp_no)
left join departments using (dept_no)
where dept_name = 'Sales';

--Listing each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select emp_no, last_name, first_name, dept_name from employees
left join dept_emp using (emp_no)
left join departments using (dept_no)
where dept_name = 'Sales' or dept_name= 'Development';

--Listing the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name) as last_name_count from employees
group by last_name order by last_name_count desc;