/* NULL Operatore MySQL */

USE sql_demo;

SELECT * FROM emp_salary;

/* MySQL IS NULL operator
To test whether a value is NULL or not, you use the  IS NULL operator. 
Here’s the basic syntax of the IS NULL operator:
value IS NULL */
/* The following query uses the IS NULL operator to find employee 
who do not have a max_salary: */
SELECT 
    emp_name, 
    age, 
    gender,
    salary,
    max_salary
FROM
    emp_salary
WHERE
    max_salary IS NULL
ORDER BY 
     emp_name;