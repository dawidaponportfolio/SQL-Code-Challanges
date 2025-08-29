SELECT *
FROM animals_secondary
UNION 
SELECT *
FROM animals_main
ORDER BY animal ASC
;