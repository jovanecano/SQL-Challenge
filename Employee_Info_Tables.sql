--creating emplyee title table
CREATE TABLE titles(
	title_id PRIMARY KEY
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