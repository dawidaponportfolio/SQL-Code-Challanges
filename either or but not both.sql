SELECT name
FROM Employees
WHERE (department LIKE 'Sales' AND salary <= 50000) OR (department NOT LIKE 'Sales' AND salary > 50000)
;