SELECT employee_id
FROM employees
ORDER BY SUBSTRING(birth_date,1, 7) ASC
Limit 3;