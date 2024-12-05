-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

-- Drop tables if they exist
DROP TABLE IF EXISTS "dept_emp", "dept_manager", "employees", "departments", "salaries", "titles";

-- Create "titles" table first, as employees depend on it
CREATE TABLE "titles" (
    "title_id" VARCHAR(10) NOT NULL,
    "title" VARCHAR(50) NOT NULL,
    PRIMARY KEY ("title_id")
);

-- Create "departments" table
CREATE TABLE "departments" (
    "dept_no" VARCHAR(10) NOT NULL,
    "dept_name" VARCHAR NOT NULL,
    PRIMARY KEY ("dept_no")
);

-- Create "employees" table 
CREATE TABLE "employees" (
    "emp_no" INT NOT NULL,
    "emp_title" VARCHAR(10) NOT NULL,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "sex" VARCHAR(7) NOT NULL,
    "hire_date" DATE NOT NULL,
    PRIMARY KEY ("emp_no"),
    FOREIGN KEY ("emp_title") REFERENCES "titles" ("title_id")
);

-- Create "salaries" table
CREATE TABLE "salaries" (
    "emp_no" INT NOT NULL,
    "salary" BIGINT NOT NULL,
    FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

-- Create "dept_emp" table
CREATE TABLE "dept_emp" (
    "emp_no" BIGINT NOT NULL,
    "dept_no" VARCHAR(10) NOT NULL,
    PRIMARY KEY ("emp_no", "dept_no"),
    FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
    FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);

-- Create "dept_manager" table
CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(10) NOT NULL,
    "emp_no" INT NOT NULL,
    PRIMARY KEY ("dept_no", "emp_no"),
    FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
    FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);

SELECT * FROM titles;
