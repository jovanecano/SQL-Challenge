-- DATA ANALYSIS PORTION OF PROJECT 

-- List the employee number, last name, first name, sex, and salary of each employee
SELECT sal.emp_no, em.last_name, em.first_name, em.sex, sal.salary
FROM employees as em
INNER JOIN salaries as sal 
ON sal.emp_no = em.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM emmployees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- List the manager of each department along with their department number, department name,...
-- employee #, last name, and first name
SELECT DISTINCT ON (dept_manager.dept_no) dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, 
employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments
ON dept_manager.dept_no = department.dept_no
INNER JOIN employees
on dept_manager.emp_no = employees.emp_no;

-- List the department number for each employee along with that employee's emp_no, last name,first name
-- and department name
SELECT DISTINCT ON(employees.emp_no) employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
on employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose
-- last name begins with the letter B
SELECT first_name, last_name
FROM employees
WHERE employees.first_name = 'Hercules' and last_name LIKE 'B%';

