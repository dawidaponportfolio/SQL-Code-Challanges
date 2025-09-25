SELECT customer_id, COUNT(order_date) AS order_count
FROM Orders
GROUP BY customer_id
;