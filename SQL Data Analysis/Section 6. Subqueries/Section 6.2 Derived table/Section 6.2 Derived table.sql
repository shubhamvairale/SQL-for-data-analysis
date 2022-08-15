/* MySQL derived tables */
/* A derived table is a virtual table returned from a SELECT statement. 
A derived table is similar to a temporary table, but using a derived table 
in the SELECT statement is much simpler than a temporary table because it does 
not require creating the temporary table.

The term derived table and subquery is often used interchangeably. 
When a stand-alone subquery is used in the FROM clause of a SELECT statement,
 it is also called a derived table. */
 
 SELECT 
    age,
    ROUND(SUM(salary * 2 ) ) new_salary

FROM
    emp_salary
WHERE
    salary >60000;