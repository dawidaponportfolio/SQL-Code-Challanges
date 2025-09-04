WITH CTE AS 
(
SELECT d.department_name, e.name, e.salary, ROW_NUMBER() OVER(PARTITION BY e.department_id ORDER BY e.salary DESC) AS ranking
FROM Employee e
JOIN Department d
ON d.department_id = e.department_id
)
SELECT department_name, name, salary
FROM CTE 
WHERE ranking <= 3
ORDER BY department_name ASC, salary DESC, name ASC
;