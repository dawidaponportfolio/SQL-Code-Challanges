SELECT (COUNT(*) * (2*0.5)) - (COUNT(*) * (1.5*0.5)) AS savings
FROM orders
WHERE pizza_order = 'Pepperoni'
;