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

