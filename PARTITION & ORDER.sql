SELECT country, color, publication_year, ROW_NUMBER() OVER (PARTITION BY country ORDER BY publication_year) AS color_sequence_number
FROM doors d
JOIN doors_specs ds
ON d.id = ds.id
ORDER BY country, publication_year ASC
;