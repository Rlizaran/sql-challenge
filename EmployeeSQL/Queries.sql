-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, s.salary FROM "Employees" as emp
INNER JOIN "Salary" as s ON emp.emp_no = s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT emp.first_name, emp.last_name,  emp.hire_date FROM "Employees" as emp
WHERE emp.hire_date >= '1985-12-31' AND emp.hire_date < '1987-01-01';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT m.deptarment_number, d.detp_name, m.emp_no, emp.last_name, emp.first_name FROM "Manager_Department" as m
INNER JOIN "Department" as d ON m.deptarment_number = d.dept_no
INNER JOIN "Employees" as emp ON m.emp_no = emp.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT emp_dep.emp_no, emp.last_name, emp.first_name, d.detp_name FROM "Employer_Department" as emp_dep
INNER JOIN "Employees" as emp ON emp_dep.emp_no = emp.emp_no
INNER JOIN "Department" as d ON emp_dep.department_number = d.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex FROM "Employees"
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, d.detp_name FROM "Employees" as emp
INNER JOIN "Employer_Department" as emp_dep ON emp.emp_no = emp_dep.emp_no 
INNER JOIN "Department" as d ON emp_dep.department_number = d.dept_no
WHERE d.detp_name LIKE 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, d.detp_name FROM "Employees" as emp
INNER JOIN "Employer_Department" as emp_dep ON emp.emp_no = emp_dep.emp_no 
INNER JOIN "Department" as d ON emp_dep.department_number = d.dept_no
WHERE d.detp_name LIKE 'Sales' OR d.detp_name LIKE 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) FROM "Employees"
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

-- Epilogue --
SELECT * FROM "Employees"
WHERE emp_no = 499942;