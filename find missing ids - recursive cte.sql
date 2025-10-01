WITH RECURSIVE CTE AS 
(SELECT MAX(customer_id) AS ids
FROM Customers

UNION ALL 

SELECT ids-1 
FROM CTE 
WHERE ids > 2 ) -- 5,4,3,2

SELECT *
FROM CTE
WHERE ids NOT IN (SELECT customer_id FROM Customers) -- 3,2
ORDER BY ids ASC
;