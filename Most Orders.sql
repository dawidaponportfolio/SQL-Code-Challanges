SELECT customer_id, number_of_orders
FROM orders
WHERE number_of_orders = (SELECT MAX(number_of_orders) from orders)
;