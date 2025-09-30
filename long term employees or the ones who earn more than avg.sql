WITH CTE AS 
(
    SELECT AVG(salary)
    FROM Employees
)
SELECT *
FROM Employees
WHERE salary > (SELECT * FROM CTE) OR years_employed > 10
;