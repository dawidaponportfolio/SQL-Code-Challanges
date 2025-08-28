SELECT country, average_height
FROM heights
HAVING average_height > (SELECT AVG(average_height)
FROM heights)
ORDER BY average_height DESC
;