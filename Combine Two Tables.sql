SELECT first_name, last_name, state
FROM employee_name
LEFT JOIN employee_location
ON employee_name.person_id = employee_location.employee_id
ORDER BY first_name ASC
;