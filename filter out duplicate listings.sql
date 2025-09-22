SELECT company_id, position
FROM 
(SELECT *, ROW_NUMBER() OVER(PARTITION BY position, company_id ORDER BY job_id) AS rn
FROM Listings)
WHERE rn = 1
ORDER BY job_id ASC
;