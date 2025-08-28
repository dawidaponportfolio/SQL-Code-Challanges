SELECT e.employee_id, e.department, e.salary AS old_salary, ROUND(e.salary * 1.15, 2) AS new_salary
FROM employee_raise e
JOIN 
(SELECT department, MIN(salary) as lowest_salary
FROM employee_raise
GROUP BY department) AS min_sal
ON e.department = min_sal.department AND e.salary = min_sal.lowest_salary
ORDER BY new_salary DESC
;




-- or

WITH CTE AS
(
SELECT *
FROM 
(SELECT *
FROM employee_raise
ORDER BY department, salary ASC) AS t1
ORDER BY salary ASC
LIMIT 3 
)
SELECT employee_id,	department, salary AS old_salary, salary + (salary*0.15) AS new_salary
FROM CTE
ORDER BY new_salary DESC
;