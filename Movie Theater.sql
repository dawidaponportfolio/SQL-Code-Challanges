SELECT customer_id
FROM customers
WHERE purchased_items IN ( "M&Ms", "Snickers", "Twizzlers")
;