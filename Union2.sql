WITH CTE AS
(
SELECT *
FROM sales_2009
UNION ALL
SELECT *
FROM sales_2010
UNION ALL
SELECT *
FROM sales_2011
)
SELECT product_id, SUM(quantity_sold) AS total_sales
FROM CTE
GROUP BY product_id
ORDER BY total_sales DESC
;