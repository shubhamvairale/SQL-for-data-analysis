/* create new database */
create database sql_demo;

/* use sql_demo database */
use sql_demo;

/* create a new table*/
CREATE TABLE emp_salary (
name varchar(25),
age int,
gender char(1),
doj date,
city varchar(25),
salary int );

/* insert value in table */

INSERT INTO emp_salary (name, age, gender, doj, city, salary)
VALUES("jimmy", 35, "M", "2005-05-30", "Chicago", 70000),
("shane", 30, "M", "1999-03-10", "Seattle", 55000),
("Marry", 28, "F", "2009-03-10", "Boston", 62000),
("Dwayne", 37, "M", "2011-07-12", "Austin", 57000),
("Sara", 32, "F", "2017-10-27", "New York", 72000),
("Ammy", 35, "F", "2014-12-20", "Seattle", 80000),
("Carry", 38, "F", "2009-03-10", "Boston", 65000),
("Swayne", 27, "M", "2011-07-12", "Austin", 58000),
("Swara", 42, "F", "2017-10-27", "New York", 74000),
("Amey", 25, "M", "2014-12-20", "Seattle", 80000);

/* A) If you want to select data from all the columns of the emp_salary table, you can 
specify asterisk (*) in the SELECT  */

SELECT * FROM emp_salary;

/* B) If you want to select data from all the columns of the emp_salary table, you can specify 
all the column names in the SELECT clause like this: */

SELECT name,
       age,
       gender,
       doj,
       city,
       salary 
       from emp_salary;
       
/* C) Using the MySQL SELECT statement to retrieve data from a single column example */

SELECT salary from emp_salary;
