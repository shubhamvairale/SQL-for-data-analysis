/* MySQL RIGHT JOIN */
/* The right join clause is similar to the left join clause except 
that the treatment of left and right tables is reversed. The right 
join starts selecting data from the right table instead of the left table.

The right join clause selects all rows from the right table and 
matches rows in the left table. If a row from the right table does
 not have matching rows from the left table, the column of the left table
 will have NULL in the final result set.*/
 
 /* This statement uses the right join to join the members and committees tables:*/
 
 SELECT 
    m.member_id, 
    m.name AS member, 
    c.committee_id, 
    c.name AS committee
FROM
    members m
RIGHT JOIN committees c on c.name = m.name;