SELECT patient_id, first_name
FROM patients
WHERE first_name LIKE 's%' AND first_name LIKE '%s' AND LENGTH(first_name) >= 6
;