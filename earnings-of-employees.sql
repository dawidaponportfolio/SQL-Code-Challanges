SELECT (SELECT MAX(salary*months)AS max_salary
FROM employee) AS salary_max, 
COUNT(*) AS max_employee_count
FROM employee
WHERE salary*months = (SELECT MAX(salary*months)AS max_salary
FROM employee)
;