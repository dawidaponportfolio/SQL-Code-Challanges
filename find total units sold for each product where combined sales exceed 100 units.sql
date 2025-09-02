SELECT product_name, SUM(units_sold) AS total_sales
FROM Sales
GROUP BY product_name
HAVING total_sales > 100
;