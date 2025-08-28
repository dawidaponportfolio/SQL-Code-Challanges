SELECT M.employee_id, M.position, COUNT(E.employee_id)
FROM direct_reports E
JOIN direct_reports M
ON E.managers_id = M.employee_id
WHERE M.position LIKE '%Manager%'
GROUP BY M.employee_id
;



-- or

SELECT M.employee_id, M.position, COUNT(E.employee_id)
FROM direct_reports E
JOIN direct_reports M
ON E.managers_id = M.employee_id
GROUP BY M.employee_id
HAVING position LIKE '%Manager%'
;


SELECT mng.employee_id, mng.position, COUNT(emp.managers_id)
FROM direct_reports emp
JOIN direct_reports mng
ON emp.managers_id = mng.employee_id
GROUP BY mng.employee_id
HAVING position LIKE '%Manager%';

-- Emp mng joined to emp table based on the condition that employee's manager ID [emp.managers_id] is matching with manager's employee ID (mng.employee_id)