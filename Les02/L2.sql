--Restricting and Sorting Data

--Restrict the rows that are returned by using the WHERE clause:
SELECT *|{[DISTINCT] column|expression [alias],...}
FROM   table
[WHERE condition(s)];

--Using the WHERE Clause

SELECT employee_id,
       last_name,
       job_id,
       department_id
  FROM employees
 WHERE department_id = 90;

--Character Strings and Dates

/*
Character strings and date values are enclosed in single quotation marks.
Character values are case sensitive, and date values are format sensitive.
The default date format is DD-MON-RR.
*/

SELECT last_name, job_id, department_id
  FROM employees
 WHERE last_name = 'Whalen';

--Using Comparison Conditions

SELECT last_name, salary
  FROM employees
 WHERE salary <= 3000;

--Using the BETWEEN Condition

SELECT last_name, salary
  FROM employees
 WHERE salary BETWEEN 2500 AND 3500;

--Using the IN Condition

SELECT employee_id,
       last_name,
       salary,
       manager_id
  FROM employees
 WHERE manager_id IN (100, 101, 201);

--Using the LIKE Condition

/*
Use the LIKE condition to perform wildcard searches of valid search string values.
Search conditions can contain either literal characters or numbers:
% denotes zero or many characters.
_ denotes one character.
*/

SELECT first_name
  FROM employees
 WHERE first_name LIKE 'S%';

SELECT last_name
  FROM employees
 WHERE last_name LIKE '_o%';

--Using the NULL Conditions

SELECT last_name, manager_id
  FROM employees
 WHERE manager_id IS NULL;

--Using the AND Operator

SELECT employee_id,
       last_name,
       job_id,
       salary
  FROM employees
 WHERE salary >= 10000 AND job_id LIKE '%MAN%';

--Using the OR Operator

SELECT employee_id,
       last_name,
       job_id,
       salary
  FROM employees
 WHERE salary >= 10000 OR job_id LIKE '%MAN%';

--Using the NOT Operator

SELECT last_name, job_id
  FROM employees
 WHERE job_id NOT IN ('IT_PROG', 'ST_CLERK', 'SA_REP');

--Rules of Precedence

SELECT last_name, job_id, salary
  FROM employees
 WHERE job_id = 'SA_REP' OR job_id = 'AD_PRES' AND salary > 15000;

SELECT last_name, job_id, salary
  FROM employees
 WHERE (job_id = 'SA_REP' OR job_id = 'AD_PRES') AND salary > 15000;

--Using the ORDER BY Clause

/*
Sort retrieved rows with the ORDER BY clause:
ASC: ascending order, default
DESC: descending order
*/

  SELECT last_name,
         job_id,
         department_id,
         hire_date
    FROM employees
ORDER BY hire_date;

--Sorting

--Sorting in descending order:

  SELECT last_name,
         job_id,
         department_id,
         hire_date
    FROM employees
ORDER BY hire_date DESC;

--Sorting by column alias:

  SELECT employee_id, last_name, salary * 12 annsal
    FROM employees
ORDER BY annsal;

--Sorting by multiple columns:

  SELECT last_name, department_id, salary
    FROM employees
ORDER BY department_id, salary DESC;