/* LIKE Operatore MySQL */
USE sql_demo;

SELECT * FROM emp_salary;

/* MySQL provides two wildcard characters for constructing patterns: percentage % and 
underscore _ .
The percentage ( % ) wildcard matches any string of zero or more characters.
The underscore ( _ ) wildcard matches any single character.
For example, s% matches any string starts with the character s such as sun and six. 
The se_ matches any string starts with  se and is followed by any character such as 
see and sea. */


/* A) Using MySQL LIKE operator with the percentage (%) wildcard examples
This example uses the LIKE operator to find employees whose first names start 
with the letter a: */

SELECT 
    emp_name, 
    gender, 
    salary
FROM
    emp_salary
WHERE
    emp_name LIKE 'a%';
    
    
/* This example uses the LIKE operator to find employees whose last 
names end with the literal string 'my': */

SELECT 
    emp_name, 
    gender, 
    salary
FROM
    emp_salary
WHERE
    emp_name LIKE '%my';


/* To check if a string contains a substring, you can use the percentage ( % ) 
wildcard at the beginning and the end of the substring.
For example, the following query uses the LIKE operator to find all 
employees whose last names contain the substring m: */

SELECT 
    emp_name, 
    gender, 
    salary
FROM
    emp_salary
WHERE
    emp_name LIKE '%m%';
    


/* B) Using MySQL LIKE operator with underscore( _ ) wildcard examples
To find employees whose first names start with the letter T , 
end with the letter m, and contain any single character between 
e.g., Tom , Tim, you use the underscore (_) wildcard to construct the pattern as follows: */

SELECT 
    age, 
    gender, 
    emp_name
FROM
    emp_salary
WHERE
    emp_name LIKE 'A_m';
    
/* C) Using MySQL NOT LIKE operator example
The MySQL allows you to combine the NOT operator with the LIKE 
operator to find a string that does not match a specific pattern. */

SELECT 
    emp_name, 
    gender, 
    salary
FROM
    emp_salary
WHERE
    emp_name NOT LIKE '%m%';
    

