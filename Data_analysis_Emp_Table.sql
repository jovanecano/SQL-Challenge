-- DATA ANALYSIS PORTION OF PROJECT 

-- List the employee number, last name, first name, sex, and salary of each employee
SELECT sal.emp_no, em.last_name, em.first_name, em.sex, sal.salary
FROM employees as em
INNER JOIN salaries as sal 
ON sal.emp_no = em.emp_no;