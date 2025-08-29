SELECT name AS worst_criminals
FROM police_report
WHERE (report IS NULL OR (report LIKE '%g%' OR report LIKE '%G%' OR report LIKE '%b%' OR report LIKE '%B%')) AND map IN ('Caerleon', 'Dewsbury', 'Kirkwall', 'Findochty')
ORDER BY severe_score DESC
LIMIT 5;