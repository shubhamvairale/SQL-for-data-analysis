/* MySQL Subquery */

USE sql_demo;

SELECT * FROM emp_salary;

/* A MySQL subquery is a query nested within another query such as SELECT, 
INSERT, UPDATE or DELETE. Also, a subquery can be nested within another subquery. */

/* A MySQL subquery is called an inner query while the query that contains 
the subquery is called an outer query. A subquery can be used anywhere that 
expression is used and must be closed in parentheses.*/

/* you can find employee whose salary are greater than the 
average salary using a subquery: */
SELECT 
    emp_name, 
    age, 
    salary
FROM
    emp_salary
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            emp_salary);
            
