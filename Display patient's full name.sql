SELECT CONCAT(first_name, ' ', last_name) as full_name, 
	   ROUND((height/30.48), 1) as height, 
       ROUND((weight*2.205)) AS weight, birth_date, 
       CASE
       	WHEN gender = 'M' THEN 'MALE'
        WHEN gender = 'F' THEN 'FEMALE'
       END AS gender
FROM patients
;