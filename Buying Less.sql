SELECT customer_id
FROM purchases
GROUP BY customer_id
HAVING SUM(order_total) < 250 OR COUNT(customer_id) <= 2;