SELECT city, LENGTH(city)
FROM station 
GROUP BY city
HAVING LENGTH(city) = (SELECT MAX(LENGTH(city))
FROM station)
OR
LENGTH(city) = (SELECT MIN(LENGTH(city))
FROM station)
ORDER BY LENGTH(city) DESC, city ASC
LIMIT 2
;