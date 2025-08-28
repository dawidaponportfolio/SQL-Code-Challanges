WITH CTE as
(
  SELECT  
	CASE 
    WHEN patient_id%2 = 0 THEN 'Yes'
    ELSE 'No'
    end AS has_insurance
FROM admissions
)
SELECT DISTINCT has_insurance, 
CASE
WHEN has_insurance = 'Yes' THEN COUNT(*) * 10
ELSE COUNT(*) * 50
END AS 
FROM CTE
GROUP BY has_insurance
;