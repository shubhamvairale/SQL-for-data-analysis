/* MySQL alias for columns */

USE sql_demo;

SELECT * FROM emp_salary;

/* The following query selects the first names and last names of employees. 
It uses the CONCAT_WS() function to concatenate emp_name and age into new . */
SELECT 
    CONCAT_WS(', ', emp_name, age) as new 
FROM
    emp_salary;
    
    