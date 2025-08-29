SELECT d.id, country, color, ROW_NUMBER() OVER(PARTITION BY country, color) AS row_num
FROM doors d
JOIN doors_specs ds
ON d.id = ds.id
WHERE publication_year < 2000
ORDER BY d.id 
;