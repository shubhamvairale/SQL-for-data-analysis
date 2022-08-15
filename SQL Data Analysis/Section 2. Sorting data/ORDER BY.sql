use sql_demo;
show tables;

/* A) Using MySQL ORDER BY clause to sort the result set by one column example
The following query uses the ORDER BY clause to sort the customers by their last names 
in ascending order. */

SELECT 
    age, 
    name
FROM
    emp_salary
ORDER BY 
	age DESC ;
    
    
    /* B) If you want to sort the emp_salary by the age, name in 
    descending and ascending order and then by the first age in ascending
    order, you specify both  DESC and ASC in these respective columns 
    as follows: */

SELECT 
   age, name
From 
    emp_salary
ORDER BY 
     age ASC,
     name DESC;
     

SELECT * FROM emp_salary;


/* C) The following query selects the order line items from the emp_salary 
table. It calculates the subtotal for each line item and sorts the result set 
based on the subtotal. */
SELECT 
    name,
    doj,
    5 * salary AS subtotal
FROM
    emp_salary
ORDER BY subtotal DESC;

