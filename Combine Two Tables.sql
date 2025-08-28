SELECT t1.first_name, t1.last_name, t2.state
FROM employee_name t1
LEFT JOIN employee_location t2
ON t1.person_id = t2.employee_id
ORDER BY first_name ASC
;