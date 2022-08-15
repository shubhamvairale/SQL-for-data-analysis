/* AND Operatore MySQL */

USE sql_demo;

SELECT * FROM emp_salary;

/* The following query uses the OR operator in the WHERE clause to select all the customers 
located in the Chicago or B: */

SELECT    
    emp_name, 
    age, 
    gender,
    city,
    salary
FROM    
    emp_salary
WHERE 
    city = 'Chicago'
    OR city = 'Boston' ;