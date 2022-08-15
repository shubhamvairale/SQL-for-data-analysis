SELECT * FROM emp_salary;
CREATE TABLE emp_details (emp_name varchar(25), age int, city varchar(25), salary int );

INSERT INTO emp_details (emp_name, age, city, salary)
VALUE("jimmy", 35, "Chicago", 70000),
("shane", 30,  "Seattle", 55000),
("Marry", 28, "Boston", 62000),
("Dwayne", 37, "Austin", 57000),
("Sara", 32,"New York", 72000),
("Ammy", 35, "Seattle", 80000),
("arry", 28, "Boston", 62000),
("wayne", 37, "Austin", 57000),
("Boara", 32,"New York", 72000),
("Carry", 35,"Seattle", 80000);

SELECT * FROM emp_details;
/* MySQL self join using INNER JOIN clause
To get the whole organization structure, you can join the employees 
table to itself using the emp_name and age columns.  */

SELECT 
    CONCAT(m.emp_name, ', ', m.age) AS Manager,
    CONCAT(e.emp_name, ', ', e.age) AS 'Direct report'
FROM
    emp_salary e
INNER JOIN emp_salary m 
ORDER BY 
    Manager;

SELECT 
    IFNULL(CONCAT(m.lastname, ', ', m.firstname),
            'Top Manager') AS 'Manager',
    CONCAT(e.lastname, ', ', e.firstname) AS 'Direct report'
FROM
    employees e
LEFT JOIN employees m ON 
    m.employeeNumber = e.reportsto
ORDER BY 
    manager DESC;


/* Using MySQL self join to compare successive rows
By using the MySQL self join, you can display a list of customers who locate 
in the same city by joining the customers table to itself. */
SELECT 
    c1.city, 
    c1.emp_name, 
    c2.salary
FROM
    emp_salary c1
INNER JOIN emp_salary c2 ON 
    c1.city = c2.city
    AND c1.emp_name > c2.emp_name
ORDER BY 
    c1.city;