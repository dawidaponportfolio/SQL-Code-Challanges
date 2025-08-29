SELECT (SELECT COUNT(*) FROM patients WHERE gender = 'F') AS female_count, (SELECT COUNT(*) FROM patients WHERE gender = 'M') AS male_count
FROM patients
LIMIT 1
;