CREATE TABLE titles (
	title_id TEXT PRIMARY KEY,
	title VARCHAR(20) NOT null);
	
CREATE TABLE departments (
	dept_no TEXT PRIMARY KEY,
	dept_name VARCHAR(20) NOT null);
	
CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(5) NOT null,
	birth_date VARCHAR(10) NOT null,
	first_name VARCHAR(30) NOT null,
	last_name VARCHAR(30) NOT null,
	sex VARCHAR(1) NOT null,
	hire_date VARCHAR(10) NOT null,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));

CREATE TABLE dept_emp (
	emp_no INTEGER NOT null,
	dept_no VARCHAR(4) NOT null,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT null,
	emp_no INTEGER NOT null,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

CREATE TABLE salaries (
	emp_no INTEGER NOT null,
	salary INTEGER NOT null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));