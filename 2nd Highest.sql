WITH CTE AS
  (
  SELECT department_name, employee_name, salary, RANK() OVER(PARTITION BY department_name ORDER BY salary DESC) as rn
FROM departments
JOIN employees
ON employees.department_id = departments.department_id
  )
  SELECT department_name, employee_name, salary
  FROM CTE
  WHERE rn = 2
;