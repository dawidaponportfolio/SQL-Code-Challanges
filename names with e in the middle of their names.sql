SELECT name
FROM Employees
WHERE name LIKE '%e%' AND name NOT LIKE 'e%' AND name NOT LIKE '%e'
;