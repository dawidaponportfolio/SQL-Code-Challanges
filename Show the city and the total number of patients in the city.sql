SELECT city, COUNT(patient_id) AS num_patients
FROM patients
GROUP BY city
ORDER BY num_patients DESC, city ASC
;