SELECT country, COUNT(customer_id) AS customer_count
FROM Customers
GROUP BY country
;