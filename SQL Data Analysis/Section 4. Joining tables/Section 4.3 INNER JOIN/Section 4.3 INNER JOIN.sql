/*MySQL INNER JOIN clause */

/*The INNER JOIN matches each row in one table with every row in other 
tables and allows you to query rows that contain columns from both tables.
The INNER JOIN is an optional clause of the SELECT statement. It appears 
immediately after the FROM clause. Here is the syntax of the INNER JOIN clause: */

/* SELECT
    select_list
FROM t1
INNER JOIN t2 ON join_condition1
INNER JOIN t3 ON join_condition2
...;  */

show tables;
SELECT * FROM emp_details;
SELECT * FROM committees;
SELECT * FROM members;

SELECT 
    m.member_id, 
    m.name AS member, 
    c.committee_id, 
    c.name AS committee
FROM
    members m
INNER JOIN committees c USING(name);