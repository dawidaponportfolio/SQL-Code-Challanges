SELECT medication, rec_dosage
FROM medication_information
UNION ALL
SELECT medication_name, recommended_dosage
FROM med_list
ORDER BY medication ASC
;