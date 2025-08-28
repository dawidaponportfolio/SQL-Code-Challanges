SELECT location, ROUND(AVG((((amplitude/period)*(amplitude/period)) / period)), 2) AS avg_magnitude
FROM earthquakes
WHERE amplitude >= 1 AND period >= 1
GROUP BY location
HAVING avg_magnitude > 1
;