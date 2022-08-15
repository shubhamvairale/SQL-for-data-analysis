/* AND Operatore MySQL */
USE sql_demo;

SELECT * FROM emp_salary;

/* The IN operator allows you to determine if a value matches any value in a list of values.
 Here’s the syntax of the IN operator:
value IN (value1, value2, value3,...) */


/* The following example uses the IN operator to find the employee in the Boston and Austin : */

SELECT 
    emp_name, 
    age, 
    city,
    gender, 
    doj,
    salary
FROM
    emp_salary
WHERE
    city IN ('Austin' , 'Boston');