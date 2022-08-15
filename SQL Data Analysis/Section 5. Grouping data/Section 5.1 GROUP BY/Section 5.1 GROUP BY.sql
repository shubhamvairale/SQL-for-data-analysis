/* MySQL GROUP BY clause */
/* The GROUP BY clause groups a set of rows into a set of summary rows by values 
of columns or expressions. The GROUP BY clause returns one row for each group. 
In other words, it reduces the number of rows in the result set.

The GROUP BY clause is an optional clause of the SELECT statement. 
The following illustrates the GROUP BY clause syntax: */
/*
SELECT 
    c1, c2,..., cn, aggregate_function(ci)
FROM
    table
WHERE
    where_conditions
GROUP BY c1 , c2,...,cn;
*/

SELECT * FROM emp_salary;
/* Suppose you want to group gender column as the following query: */

SELECT 
    gender
FROM
    emp_salary
GROUP BY gender;


/* For example, if you want to know the number of employee gender f and m,
 you can use the COUNT function with the GROUP BY clause as follows */

SELECT 
    gender, COUNT(*)
FROM
    emp_salary
GROUP BY gender;