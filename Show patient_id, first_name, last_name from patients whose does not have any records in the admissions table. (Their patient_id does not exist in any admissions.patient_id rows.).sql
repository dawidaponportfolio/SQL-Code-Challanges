SELECT patient_id, first_name, last_name
FROM patients
WHERE patient_id NOT IN (SELECT patient_id FROM admissions)
;