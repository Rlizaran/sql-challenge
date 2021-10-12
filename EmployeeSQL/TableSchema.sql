-- Department Table
CREATE TABLE "Department" (
    "dept_no" VARCHAR(10)   NOT NULL,
    "detp_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "dept_no"
     )
);

-- dept_employer
CREATE TABLE "Employer_Department" (
    "department_number" VARCHAR(10)   NOT NULL,
    "emp_no" INTEGER   NOT NULL
);

-- Manager Department table
CREATE TABLE "Manager_Department" (
    "emp_no" INTEGER   NOT NULL,
    "deptarment_number" VARCHAR(10)   NOT NULL
);

-- Employees table
CREATE TABLE "Employees" (
    "emp_no" INTEGER   NOT NULL,
    "emp_title_id" VARCHAR(30)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

-- Salary table
CREATE TABLE "Salary" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL
);

-- Titles table
CREATE TABLE "Titles" (
    "title_id" VARCHAR(10)   NOT NULL,
    "title" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "Employer_Department" ADD CONSTRAINT "fk_Employer_Department_department_number" FOREIGN KEY("department_number")
REFERENCES "Department" ("dept_no");

ALTER TABLE "Employer_Department" ADD CONSTRAINT "fk_Employer_Department_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Manager_Department" ADD CONSTRAINT "fk_Manager_Department_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Manager_Department" ADD CONSTRAINT "fk_Manager_Department_deptarment_number" FOREIGN KEY("deptarment_number")
REFERENCES "Department" ("dept_no");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Titles" ("title_id");

ALTER TABLE "Salary" ADD CONSTRAINT "fk_Salary_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");