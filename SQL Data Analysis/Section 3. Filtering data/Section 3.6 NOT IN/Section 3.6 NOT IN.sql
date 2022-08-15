/* NOT IN Operatore MySQL */
USE sql_demo;

SELECT * FROM emp_salary;

/* The NOT operator negates the IN operator:
Syntax :
value NOT IN (value1, value2, value2)

The NOT IN operator returns one if the value doesn’t equal any value in the list. 
Otherwise, it returns 0.*/

/* The following example uses the NOT IN operator to find the city that do not 
locate in Chicago and New work: */

SELECT 
    emp_name, 
    age, 
    gender,
    city,
    salary
FROM
    emp_salary
WHERE
    city NOT IN ('Chicago' , 'New York')
ORDER BY 
    city;