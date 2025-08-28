SELECT department, first_name, last_name, salary, AVG(salary) OVER(PARTITION BY department) AS dept_avg
FROM employee_salary
ORDER BY department, salary DESC
;