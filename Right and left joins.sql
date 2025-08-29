SELECT customer_id, SUM(quantity*price) AS total_spending
FROM order_items
LEFT JOIN products
ON order_items.product_id = products.id
LEFT JOIN orders
ON order_items.order_id = orders.id 
GROUP BY customer_id
ORDER BY total_spending DESC
LIMIT 5
;