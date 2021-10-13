# SQL Homework - Employee Database: A Mystery in Two Parts

![sql.png](sql.png)

## Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform:

1. Data Engineering

3. Data Analysis

Note: You may hear the term "Data Modeling" in place of "Data Engineering," but they are the same terms. Data Engineering is the more modern wording instead of Data Modeling.

## Instructions

#### Data Modeling

Inspect the CSVs and sketch out an ERD of the tables. Feel free to use a tool like [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

#### Data Engineering

* Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

  * For the primary keys check to see if the column is unique, otherwise create a [composite key](https://en.wikipedia.org/wiki/Compound_key). Which takes to primary keys in order to uniquely identify a row.
  * Be sure to create tables in the correct order to handle foreign keys.

* Import each CSV file into the corresponding SQL table. **Note** be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.

#### Data Analysis

* [ERD text representation](https://github.com/Rlizaran/sql-challenge/blob/main/EmployeeSQL/ERDSchema.txt)


![ERD.png](https://github.com/Rlizaran/sql-challenge/blob/main/EmployeeSQL/ERD.png)

Once you have a complete database, do the following:

- [x] List the following details of each employee: employee number, last name, first name, sex, and salary. 

- [x] List first name, last name, and hire date for employees who were hired in 1986.

- [x] List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

- [x] List the department of each employee with the following information: employee number, last name, first name, and department name.

- [x] List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

- [x] List all employees in the Sales department, including their employee number, last name, first name, and department name.

- [x] List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

- [x] In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

* [Queries.sql](https://github.com/Rlizaran/sql-challenge/blob/main/EmployeeSQL/Queries.sql)
* [Table Schema](https://github.com/Rlizaran/sql-challenge/blob/main/EmployeeSQL/TableSchema.sql)

## Bonus (Optional)

As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

- [x]  Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.)

2. Create a histogram to visualize the most common salary ranges for employees.
* Median Salary of Employees is $48,681

![](https://github.com/Rlizaran/sql-challenge/blob/main/EmployeeSQL/Images/Most%20Common%20Salary%20Among%20Employees.png)

3. Create a bar chart of average salary by title.
* Table is ordered by Salary in descending order

![](https://github.com/Rlizaran/sql-challenge/blob/main/EmployeeSQL/Images/Average%20Salary%20by%20Title.png)

## Epilogue

Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.

![](https://github.com/Rlizaran/sql-challenge/blob/main/EmployeeSQL/Epilogue.PNG)

## References

Mockaroo, LLC. (2021). Realistic Data Generator. [https://www.mockaroo.com/](https://www.mockaroo.com/)

- - -

© 2021 Trilogy Education Services, LLC, a 2U, Inc. brand. Confidential and Proprietary. All Rights Reserved.
