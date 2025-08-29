SELECT doors.id, country, color, ROW_NUMBER() OVER(PARTITION BY country, color) AS row_num
FROM doors
JOIN doors_specs
ON doors.id = doors_specs.id
WHERE publication_year < 2000 AND doors.id IN (SELECT id FROM doors_specs)
ORDER BY doors.id ASC
;