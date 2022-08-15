/* use database your use or your already created */

use sql_demo;


/* Here’s a trivial example: */

SELECT 1 + 1;  

/* MySQL has many built-in functions like string, date, and Math functions. 
And you can use the SELECT statement to execute these functions.

The following example returns the current date and time of the MySQL server: */

SELECT NOW();

/* The NOW() function doesn’t have any parameters. To call it, you place the parentheses () 
after the function name.
If a function has parameters, you need to pass arguments into it. For example, 
concatenate strings into one string, you can use the CONCAT() function:*/

SELECT CONCAT('Alexa',' ','pie');
