/* SQL Common Table Expression or CTE */ 

/* A common table expression is a named temporary result set that
 exists only within the execution scope of a single SQL statement 
 e.g.,SELECT, INSERT, UPDATE, or DELETE. */
 
WITH emp_details AS (
    SELECT 
        emp_name, city
    FROM
        emp_salary
    WHERE
        city = 'New York'
) SELECT 
    emp_name
 FROM
    emp_details
 WHERE
    city = 'New York'
 ORDER BY emp_name;
