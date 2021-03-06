SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employee;
SELECT * FROM salaries;
SELECT * FROM title;

--Data Analysis
--#1Select the employee number, last name, first name, sex, and salary of all employees, ordered by employee number

SELECT employee.emp_no, employee.last_name, employee.first_name, employee.gender, salaries.salary
FROM employee JOIN salaries ON employee.emp_no = salaries.emp_no
;

--#2 Select the first name, last name, and hiring date for all employees hired in 1986
SELECT 
	first_name,
	last_name 
	
FROM  employee hire_date WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986'
;

--#3 Select the department number, department name, employee number, last name, and first name of all managers of each department
SELECT departments.dept_no, departments.dept_name, employee.emp_no, employee.last_name, employee.first_name 
FROM departments 
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no 
JOIN employee ON employee.emp_no = dept_manager.emp_no
;
--#4 Select the employee number, last name, first name, and department of each employee, ordered by employee number
SELECT  employee.emp_no, employee.last_name, employee.first_name , departments.dept_name
FROM dept_emp 
JOIN employee ON employee.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
;
--#5 Select first name, last name, birth date, and sex of all employees whose first name is "Hercules" and last name begins with a "B"
SELECT employee.first_name, employee.last_name ,employee.birth_date , employee.gender 
FROM employee WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
;

--# 6Select employee number, last name, first name, and department name of all employees in the Sales department, ordered by employee number
SELECT employee.emp_no, employee.last_name, employee.first_name, departments.dept_name
FROM dept_emp
JOIN employee ON dept_emp.emp_no = employee.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
;

--#7 Select employee number, last name, first name, and department name of all employees in the 'Sales' OR the 'Development' department, ordered by employee number

SELECT employee.emp_no, employee.last_name, employee.first_name, departments.dept_name
FROM dept_emp
JOIN employee ON dept_emp.emp_no = employee.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
;

--#8 Count the number of employees, grouped by last name
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employee
GROUP BY last_name
ORDER BY
COUNT(last_name) ASC;



