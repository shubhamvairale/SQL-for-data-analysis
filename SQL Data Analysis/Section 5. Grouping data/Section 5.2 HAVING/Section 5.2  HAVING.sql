/* MySQL HAVING clause*/
/* The HAVING clause is used in the SELECT statement to specify filter 
conditions for a group of rows or aggregates.*/

/* The HAVING clause is often used with the GROUP BY clause to filter 
groups based on a specified condition. If you omit the GROUP BY clause,
 the HAVING clause behaves like the WHERE clause. */
/* bwlow the example of having those employee salary is grater than 60000 */

SELECT 
    emp_name,
    gender,
    salary
FROM 
   emp_salary
GROUP BY 
	emp_name
HAVING 
    salary > 60000 ;

