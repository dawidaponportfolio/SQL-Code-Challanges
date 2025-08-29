SELECT country, population, square_kilometers
FROM countries
WHERE population >= 100000000 OR square_kilometers >= 3000000
ORDER BY country ASC
;