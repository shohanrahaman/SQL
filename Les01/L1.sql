/* 
Lesson 01.
Retrieving Data Using the SQL SELECT Statement
*/

--Basic SELECT Statement

/*SELECT *|{[DISTINCT] column|expression [alias],...}
FROM    table;*/

--Selecting All Columns

SELECT * FROM departments;

--Selecting Specific Columns

SELECT department_id, location_id FROM departments;

--Writing SQL Statements

/*
SQL statements are not case-sensitive. 
SQL statements can be on one or more lines.
Keywords cannot be abbreviated or split across lines.
Clauses are usually placed on separate lines.
Indents are used to enhance readability.
In iSQL*Plus, SQL statements can optionally be terminated by a semicolon (;). Semicolons are required if you execute multiple SQL statements. 
*/

--Column Heading Defaults

/*
Default heading alignment: Center
Default heading display: Uppercase
Character and Date column headings are left- aligned
Number column headings are right-aligned
Default heading display: Uppercase
*/

--Using Arithmetic Operators[+,-,*,/]

SELECT last_name, salary, salary + 300
  FROM employees;

--Operator Precedence

SELECT last_name, salary, 12 * (salary + 100)
  FROM employees;

--Defining a Null Value

/*
A null is a value that is unavailable, unassigned, unknown, or inapplicable.
A null is not the same as a zero or a blank space.
*/

--Null Values in Arithmetic Expressions

SELECT last_name, 12 * salary * commission_pct
  FROM employees;

--Using Column Aliases

SELECT last_name AS name, commission_pct comm, salary * 12 "Annual Salary"
  FROM employees;

--Concatenation Operator

SELECT last_name || job_id AS "Employees"
  FROM employees;

--Using Literal Character Strings

SELECT last_name || ' is a ' || job_id AS "Employee Details"
  FROM employees;

--Duplicate Rows

SELECT DISTINCT department_id
  FROM employees;

--Displaying Table Structure
DESCRIBE employees