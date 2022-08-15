/* MySQL CROSS JOIN */

USE sql_demo;

/* MySQL CROSS JOIN example
This statement returns total sales for each store and product, 
you calculate the sales and group them by store and product as follows: */

SELECT 
    store_name,
    product_name,
    SUM(quantity * price) AS revenue
FROM
    sales
        INNER JOIN
    products ON products.id = sales.product_id
        INNER JOIN
    stores ON stores.id = sales.store_id
GROUP BY store_name , product_name; 

/* you need to use the CROSS JOIN clause.

First, use the CROSS JOIN clause to get the combination of all stores and products */

SELECT 
    store_name, product_name
FROM
    stores AS a
        CROSS JOIN
    products AS b;
