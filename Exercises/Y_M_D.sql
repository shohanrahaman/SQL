
SELECT employee_id,last_name,salary,
       TO_CHAR (TRUNC (MONTHS_BETWEEN (SYSDATE, hire_date) / 12))
       || ' Years '
       || TO_CHAR (MOD (TRUNC (MONTHS_BETWEEN (SYSDATE, hire_date)), 12))
       || ' Months '
       || TO_CHAR (TRUNC (SYSDATE)- ADD_MONTHS (hire_date,TRUNC (MONTHS_BETWEEN (SYSDATE, hire_date))))
       || ' Days' "Employees Experience"
  FROM employees;