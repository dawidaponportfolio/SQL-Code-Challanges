SELECT category, product_name, MAX(sales_amount) AS max_sales_amount 
FROM Sales_Data
GROUP BY category
;