/*  MySQL recursive CTE */



WITH RECURSIVE emp_salary (n) 
AS (
      SELECT 1
      UNION ALL
      SELECT n + 1 
      FROM emp_salary 
      WHERE n < 3
    )
SELECT n 
FROM emp_salary;
