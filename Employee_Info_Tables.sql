--creating emplyee title table
CREATE TABLE titles(
	title_id INT PRIMARY KEY,
	title VARCHAR(40)
);

-- Creating the table for employees
create table employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_tittle_id VARCHAR(5),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date DATE
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Creating the table for departments
CREATE TABLE departments (
	dept_no VARCHAR(8) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(40)
);

-- Creating the table for department employee
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(8) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

--Creating the department manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(8) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

--Creating the salaries table
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

