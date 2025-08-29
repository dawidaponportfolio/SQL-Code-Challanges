SELECT patient_id, ROUND((weight_pounds/(height_inches*height_inches)) * 703, 1) AS BMI
FROM patients
WHERE ROUND((weight_pounds/(height_inches*height_inches)) * 703, 1) > 30
;