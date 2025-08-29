SELECT product_id, SUM(quantity_sold) AS total_sales
FROM
(SELECT *
FROM sales_2009
UNION ALL
SELECT *
FROM sales_2010
UNION ALL
SELECT *
FROM sales_2011) AS t1
GROUP BY product_id
ORDER BY total_sales DESC;