SELECT customer_id, amount, ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY amount DESC) AS rn
FROM purchases;