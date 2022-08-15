/* MySQL ROLLUP */
SELECT * FROM products;

/* As clearly shown in the output, the ROLLUP clause generates not only the 
subtotals but also the grand total of the price values.

If you have more than one column specified in the GROUP BY clause, 
the ROLLUP clause assumes a hierarchy among the input columns. */

SELECT 
    product_name, 
    price
FROM
    products
GROUP BY 
    product_name
WITH ROLLUP;

/* If you have more than one column specified in the GROUP BY clause, 
the ROLLUP clause assumes a hierarchy among the input columns. */

SELECT 
    emp_name, 
    age,
    salary
FROM
    emp_salary
GROUP BY 
    age, 
    salary 
WITH ROLLUP;