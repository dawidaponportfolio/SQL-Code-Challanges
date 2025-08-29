SELECT YEAR(order_date), MONTH(order_date), COUNT(order_id)
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date)
;