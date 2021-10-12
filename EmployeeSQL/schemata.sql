# Department Table
Department as dept
----
dept_no VARCHAR(10) PK
detp_name VARCHAR(30)

# dept_employer
Employer_Department as dept_emp
----
department_number VARCHAR(10) FK >- dept.dept_no
emp_no INTEGER FK - employee.emp_no

# Manager Department table
Manager_Department as dept_manager
---
emp_no INTEGER FK - employee.emp_no
deptarment_number VARCHAR(10) FK >- dept.dept_no

# Employees table
Employees as employee
---
emp_no INTEGER PK
emp_title_id VARCHAR(30) FK - title.title_id
birth_date DATE
first_name VARCHAR(30)
last_name VARCHAR(30)
sex VARCHAR(1)
hire_date DATE

# Salary table
Salary as salary
---
emp_no INTEGER FK - employee.emp_no
salary INTEGER

# Titles table
Titles as title
----
title_id VARCHAR(10) PK
title VARCHAR(30)