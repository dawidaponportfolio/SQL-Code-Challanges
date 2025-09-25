SELECT age, COUNT(name) AS count
FROM Employees
GROUP BY age
;