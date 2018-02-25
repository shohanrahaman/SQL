

    --Single Row Function

/* 
    #Two types of sql function :
    
        # Single row function - return one result per row
            Character
            Number
            Date
            Conversion
            General

        # Multiple row function - return one result per set of rows
        
*/


/*
     #Character Functions :  
      
        # Case-manipulation functions
            LOWER
            UPPER
            INITCAP

        # Character-manipulation functions
            CONCAT
            SUBSTR
            LENGTH
            INSTR
            LPAD | RPAD
            TRIM
            REPLACE

*/



--Case-Manipulation Functions :

SELECT LOWER (first_name), UPPER (last_name), INITCAP (job_id) FROM employees;

--Character-Manipulation Functions :

SELECT CONCAT (first_name, last_name),
       LENGTH (last_name),
       LPAD (salary, 10, '*'),
       RPAD (salary, 10, '*'),
       SUBSTR (job_id, 4),
       TRIM ('A' FROM last_name),
       INSTR (first_name, 'w')
  FROM employees;

--Number Functions :

SELECT ROUND (45.926, 2), TRUNC (85.698, 2), ROUND (1500, 300) FROM DUAL;

--Date Functions :

SELECT MONTHS_BETWEEN ('01-sep-95', '11-jan-98'),
       ADD_MONTHS ('11-jan-97', 6),
       NEXT_DAY ('01-sep-95', 'friday'),
       LAST_DAY ('01-feb-96')
  FROM DUAL;

SELECT ROUND (SYSDATE, 'month'),
       ROUND (SYSDATE, 'year'),
       TRUNC (SYSDATE, 'month'),
       TRUNC (SYSDATE, 'year')
  FROM DUAL;

--Conversion Functions :

/*
    varchar2 or char to number
    varchar2 or char to date
    
    to_number,to_date,to_char
*/


SELECT TO_CHAR (hire_date, 'dd month yyyy') FROM employees;

SELECT TO_CHAR (salary, '$99,999.00') FROM employees;

SELECT TO_DATE ('01-jan-90', 'dd-mon-rr') FROM employees;

--Nesting Functions :

SELECT UPPER (CONCAT (SUBSTR (last_name, 1, 8), '_us'))
  FROM employees
 WHERE department_id = 60;

--General Functions :

    --NVL Function

SELECT NVL (commission_pct, 0) FROM employees;

    --NVL2 Function

SELECT NVL2 (commission_pct, 'sal+com', 'sal')
  FROM employees
 WHERE department_id IN (50, 80);

    --COALESCE Function

SELECT COALESCE (manager_id, commission_pct, -1) FROM employees;

    --CASE Expression

SELECT CASE job_id
          WHEN 'IT_PROG' THEN 1.10 * salary
          WHEN 'ST_CLERK' THEN 1.15 * salary
          WHEN 'SA_REP' THEN 1.20 * salary
          ELSE salary
       END
  FROM employees;

    --DECODE Function

SELECT DECODE (job_id,
               'IT_PROG', 1.10 * salary,
               'ST_CLERK', 1.15 * salary,
               'SA_REP', 1.20 * salary,
               salary)
  FROM employees;