SELECT patient_id, 
weight, 
height,
CASE
WHEN (weight/((height*0.01)*(height*0.01))) >= 30 THEN 1
ELSE 0
END AS isObese
FROM patients
;