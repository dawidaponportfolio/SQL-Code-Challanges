SELECT name AS worst_criminals
FROM police_report
WHERE (report LIKE '%G%' OR report LIKE '%g%' OR report LIKE '%B%' OR report LIKE '%b%' OR report IS NULL) AND (map IN ('Caerleon', 'Dewsbury', 'Kirekwall', 'Findochty'))
ORDER BY severe_score DESC
LIMIT 5;