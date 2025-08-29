SELECT allergies, COUNT(allergies)
FROM patients
WHERE allergies IS NOT NULL
GROUP BY allergies
ORDER BY COUNT(allergies) DESC
;