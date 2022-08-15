/* AND Operatore MySQL */
USE sql_demo;

SELECT * FROM emp_salary; 

/* The following statement uses the AND operator to find employee who 
gender M and city boston: */


SELECT 
    emp_name, 
    salary, 
    city,
    age,
    gender
FROM
    emp_salary
WHERE
    gender = 'M' AND 
    city = 'Austin';
    