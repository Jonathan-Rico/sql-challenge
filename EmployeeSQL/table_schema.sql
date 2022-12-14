--creating tables for each csv file to import data into
drop table if exists departments;
create table departments (dept_no VARCHAR not null Primary key, dept_name VARCHAR not null);

drop table if exists dept_emp;
create table dept_emp (emp_no INT not null, dept_no VARCHAR not null);

drop table if exists dept_manager;
create table dept_manager (dept_no VARCHAR not null, emp_no INT not null Primary key);

drop table if exists employees;
create table employees (emp_no INT not null Primary key, emp_title VARCHAR not null, birth_date DATE not null, 
						first_name VARCHAR not null, last_name VARCHAR not null, sex VARCHAR not null, hire_date DATE not null);

drop table if exists salaries;
create table salaries (emp_no INT not null Primary key, salary INT not null);

drop table if exists titles;
create table titles (title_id VARCHAR not null Primary key, title VARCHAR not null);

--Adding foreign keys to tables

ALTER TABLE employees 
ADD FOREIGN KEY (emp_title) REFERENCES titles(title_id);

ALTER TABLE dept_emp 
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no);

ALTER TABLE dept_manager
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no);