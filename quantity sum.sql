SELECT o.customer_id, SUM(quantity) AS total_quantity
FROM order_items oi
JOIN orders o
ON oi.order_id = o.id
JOIN products p
ON oi.product_id = p.id
WHERE unit_price < 10
GROUP BY customer_id
ORDER BY customer_id
;
