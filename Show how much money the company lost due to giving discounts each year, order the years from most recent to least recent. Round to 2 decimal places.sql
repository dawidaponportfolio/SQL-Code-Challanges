SELECT DISTINCT YEAR(order_date) AS order_year, ROUND(SUM(quantity*unit_price*discount), 2) as discounted_amount
FROM orders
JOIN order_details
ON orders.order_id = order_details.order_id
JOIN products
ON order_details.product_id = products.product_id
GROUP BY order_year
ORDER BY order_year DESC;