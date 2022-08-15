/* SQL LEFT JOIN */

/* The following example uses a left join clause to join 
the members with the committees table: */

SELECT 
    m.member_id, 
    m.name AS member, 
    c.committee_id, 
    c.name AS committee
FROM
    members m
LEFT JOIN committees c USING(name);