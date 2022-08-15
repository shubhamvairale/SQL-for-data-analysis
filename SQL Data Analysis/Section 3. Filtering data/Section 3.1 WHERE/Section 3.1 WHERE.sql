USE sql_demo;

SELECT * FROM emp_salary;

/* A) Using MySQL WHERE clause with equality operator example
The following query uses the WHERE clause to find all emp_salary table 
whose job salary are 72000 */

SELECT 
    emp_name, 
    age, 
    salary
FROM
    emp_salary
WHERE
    salary = '72000';
    
/* B)Using MySQL WHERE clause with the AND operator
The following example uses the WHERE clause to find emp_salary 
whose age 35 and city are Chicago: */
    
SELECT 
    emp_name, 
    age, 
    gender,
    doj,
    city,
    salary
FROM
    emp_salary
WHERE
    age = 35 AND
    city = 'Chicago';
    
    
/* C) Using MySQL WHERE clause with OR operator
This query finds employees whose gender M or 
employees who age 35: */

SELECT 
    emp_name, 
    age, 
    gender, 
    doj,
    city,
    salary
FROM
    emp_salary
WHERE
    gender = 'M' OR 
    age = 35
ORDER BY 
    age , 
    gender;
    
    
/* D) Using MySQL WHERE clause with the BETWEEN operator example
The BETWEEN operator returns TRUE if a value is in a range of values: */

/* The following query finds employees who age is from 25 to 35 */

SELECT 
    emp_name, 
    gender, 
    age,
    doj,
    salary
FROM
    emp_salary
WHERE
    age BETWEEN 25 AND 35
ORDER BY 
	age;
    
    
    
/* F) Using MySQL WHERE clause with the LIKE operator example */

/* WHERE CustomerName LIKE 'a%'	Finds any values that start with "a"
WHERE CustomerName LIKE '%a'	Finds any values that end with "a"
WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position
WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position
WHERE CustomerName LIKE 'a_%'	Finds any values that start with "a" and are at least 2 characters in length
WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
WHERE ContactName LIKE 'a%o'	Finds any values that start with "a" and ends with "o" */
/* example show the last 'y' in last emp_name */

SELECT 
    emp_name, 
    gender,
    age,
    doj,
    salary
FROM
    emp_salary
WHERE
    emp_name LIKE '%y'
ORDER BY emp_name;


/* G) Using MySQL WHERE clause with the IN operator example */
/* The following example uses the WHERE clause with the IN operator to find employees 
who age 25,35,28 */

SELECT 
    emp_name, 
    age, 
    salary
FROM
    emp_salary
WHERE
    age IN (25 , 35, 28)
ORDER BY 
    age;
    
/* H) Using MySQL WHERE clause with comparison operators */
/* =	Equal to. You can use it with almost any data type.
<> or !=	Not equal to
<	Less than. You typically use it with numeric and date/time data types.
>	Greater than.
<=	Less than or equal to
>=	Greater than or equal to */

/* The following query uses the not equal to (<>) operator to 
find all employees who are not Male: */

SELECT 
    emp_name, 
    gender, 
    age,
    salary
FROM
    emp_salary
WHERE
    gender <> 'M';

/* The following query finds employees whose age is greater than 30: */

SELECT 
    emp_name, 
    gender, 
    age,
    salary
FROM
    emp_salary
WHERE
    age > 30;