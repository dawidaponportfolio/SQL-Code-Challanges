WITH RECURSIVE company_hierarchy AS 
(
SELECT Employee_ID, 1 AS Level 
FROM  hierarchy
WHERE supervisor_id IS NULL
UNION ALL
SELECT eh.Employee_ID, Level + 1
FROM hierarchy eh, company_hierarchy ch
WHERE eh.supervisor_id = ch.employee_id
)
SELECT Employee_ID, Level
FROM company_hierarchy
ORDER BY Employee_ID ASC;


-- or -- 


WITH RECURSIVE company_hierarchy AS 
(
SELECT Employee_ID, 1 AS Level 
FROM  hierarchy
WHERE supervisor_id IS NULL
UNION ALL
SELECT eh.Employee_ID, Level + 1
FROM hierarchy eh
JOIN company_hierarchy ch
ON eh.supervisor_id = ch.employee_id
)
SELECT Employee_ID, Level
FROM company_hierarchy
ORDER BY Employee_ID ASC;