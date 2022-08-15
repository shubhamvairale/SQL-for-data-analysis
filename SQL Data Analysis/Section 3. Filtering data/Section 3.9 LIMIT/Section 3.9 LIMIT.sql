/* LIMIT Operatore MySQL */

USE sql_demo;

SELECT * FROM emp_salary;

/* The LIMIT clause is used in the SELECT statement to constrain the number 
of rows to return. The LIMIT clause accepts one or two arguments. 
The values of both arguments must be zero or positive integers. */

/* A) Using MySQL LIMIT to get the highest or lowest rows
This statement uses the LIMIT clause to get the top five employee 
who have old: */
SELECT 
    emp_name, 
    age, 
    gender,
    city
FROM
    emp_salary
ORDER BY 
	age DESC
LIMIT 5;

/* B) Using MySQL LIMIT clause for pagination
When you display data on the screen, you often want to divide rows into pages, 
where each page contains a limited number of rows like 10 or 20.
To calculate the number of pages, you take the total rows divided by
 the number of rows per page. For fetching rows of a specific page, you 
 can use the LIMIT clause. */
 /* This query uses the COUNT(*) aggregate function to get the total rows from the 
 emp_salary table: */

 SELECT 
    COUNT(*) 
FROM 
    emp_salary;


