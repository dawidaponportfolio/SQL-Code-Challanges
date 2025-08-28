select province_names.province_name, couNT(patient_id) AS patient_count
from patients
JOIN province_names
ON patients.province_id = province_names.province_id
GROUP BY province_names.province_id
ORDER BY couNT(patient_id) DESC
;