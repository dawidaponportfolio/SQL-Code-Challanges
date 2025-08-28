SELECT province_name
FROM province_names 
JOIN patients 
ON province_names.province_id = patients.province_id
GROUP BY province_name
HAVING COUNT((CASE WHEN gender = 'M' THEN 1 END)) > COUNT((CASE WHEN gender = 'F' THEN 1 END))
;