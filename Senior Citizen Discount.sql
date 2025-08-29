SELECT customer_id
FROM customers 
WHERE DATE(birth_date) <= DATE('1968-01-01')
ORDER BY customer_id ASC;

-- or

SELECT customer_id
FROM customers
WHERE DATEDIFF("2023-01-01", birth_date)/365 >= 55
ORDER BY customer_id ASC;