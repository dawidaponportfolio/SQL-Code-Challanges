WITH CTE1 AS
(SELECT employee_id, department, salary
FROM employee_raise
GROUP BY employee_id, department
ORDER BY salary ASC
  LIMIT 3)
SELECT *, (salary*1.15) AS New_Salary 
FROM CTE1
ORDER BY new_salary DESC;