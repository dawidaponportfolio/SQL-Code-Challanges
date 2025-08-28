SELECT employee_id, name
FROM employee
WHERE employee_id NOT IN (SELECT emp_id FROM bonus)
;