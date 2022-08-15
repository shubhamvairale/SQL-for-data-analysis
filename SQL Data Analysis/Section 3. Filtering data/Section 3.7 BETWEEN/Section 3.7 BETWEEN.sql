/* BETWEEN Operatore MySQL */
USE sql_demo;

SELECT * FROM emp_salary;

/*The BETWEEN operator is a logical operator that specifies whether a value is in 
a range or not. 
Here’s the syntax of the BETWEEN operator:
value BETWEEN low AND high; */

/* A) The following example uses the BETWEEN operator to find employee whose 
age between 25 and 35: */

SELECT 
    emp_name, 
    gender, 
    age,
    salary
FROM
    emp_salary
WHERE
    age BETWEEN 25 AND 35;


/* B) This query uses the greater than or equal (>=) and less than or equal ( <= ) 
operators instead of the BETWEEN operator to get the same result: */

SELECT 
    emp_name, 
    age, 
    salary
FROM
    emp_salary
WHERE
    age >= 30 AND age <= 35;
    
/* C) To find the age whose not between 30 and 35, 
you use the NOT BETWEEN operator as follows: */

SELECT 
    emp_name, 
    age, 
    gender,
    salary
FROM
    emp_salary
WHERE
    age NOT BETWEEN 30 AND 35;
    
/* D) To check if a value is between a date range, you should explicitly cast the 
value to the DATE type.
For example, the following statement returns the orders with the required 
dates between 2009/03/10 to 2017/10/27 */
    
SELECT 
   emp_name,
   age,
   doj,
   salary
FROM 
   emp_salary
WHERE 
   doj BETWEEN 
     CAST('2009-03-10' AS DATE) AND 
     CAST('2017-10-27' AS DATE);