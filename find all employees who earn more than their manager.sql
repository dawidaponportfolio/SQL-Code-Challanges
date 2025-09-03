SELECT Employees.name AS employee_name, Employees.salary, Boss.name AS manager_name, Boss.salary AS manager_salary
FROM Employees
JOIN Employees AS Boss
ON Employees.manager_employee_id = Boss.employee_id
WHERE Employees.salary > Boss.salary
;