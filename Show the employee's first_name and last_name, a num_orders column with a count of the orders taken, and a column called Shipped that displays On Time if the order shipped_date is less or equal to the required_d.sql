SELECT first_name, 
last_name, 
COUNT(*) AS num_orders, 
CASE 
WHEN shipped_date <= required_date THEN 'On Time'
WHEN shipped_date > required_date THEN 'Late'
ELSE 'Not Shipped'
END AS shipped
FROM employees
JOIN orders
ON employees.employee_id = orders.employee_id
GROUP BY first_name, last_name, shipped
ORDER BY last_name, first_name, num_orders DESC
;