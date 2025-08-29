SELECT patient_id, attending_doctor_id, diagnosis
FROM admissions
WHERE (patient_id%2 = 1 AND attending_doctor_id IN (1, 5, 19)) 
OR (attending_doctor_id LIKE '%2%' AND LENGTH(patient_id) = 3)
;