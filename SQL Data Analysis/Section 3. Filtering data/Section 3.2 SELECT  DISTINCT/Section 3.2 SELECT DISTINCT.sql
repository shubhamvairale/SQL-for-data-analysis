USE sql_demo;

SELECT * FROM emp_salary;

/* A) MySQL DISTINCT clause
When querying data from a table, you may get duplicate rows. 
To remove these duplicate rows, you use the DISTINCT clause in the SELECT statement.*/

SELECT DISTINCT
    age
FROM
    emp_salary
ORDER BY 
    age;
    
    
/* B) MySQL DISTINCT with multiple columns
When you specify multiple columns in the DISTINCT clause, the DISTINCT 
clause will use the combination of values in these columns to determine 
the uniqueness of the row in the result set.
For example, to get a unique combination of emp_name and age from the emp_salary table, 
you use the following query:*/

SELECT DISTINCT
    emp_name, age 
FROM
    emp_salary
WHERE
    age IS NOT NULL
ORDER BY 
    age, 
    salary;
    
