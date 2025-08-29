SELECT COUNT(product_id) AS total_transactions, 
AVG(quantity) AS avg_quantity, 
MAX(price_per_unit) AS max_unit_price,
(SELECT SUM(quantity * price_per_unit) 
FROM sales) AS total_revenue
FROM sales;
