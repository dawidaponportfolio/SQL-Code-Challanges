SELECT department, AVG(salary) AS avg_salary
FROM EMployees
GROUP BY department
;