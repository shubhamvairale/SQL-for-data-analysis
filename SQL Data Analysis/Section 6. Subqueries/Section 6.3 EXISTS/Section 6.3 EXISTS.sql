/* MySQL EXISTS operator
The EXISTS operator is a Boolean operator that returns either true or false. 
The EXISTS operator is often used to test for the existence of rows returned by the subquery. */

SELECT 
    emp_name, 
    salary,
    city
FROM
    emp_details
WHERE
    EXISTS(
	SELECT 
            1
        FROM
            emp_salary
		WHERE
            city = 'New York');