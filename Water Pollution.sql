SELECT pollutant, ROUND(AVG(concentration), 2) AS Average_Concentration
FROM pollution
GROUP BY pollutant
HAVING Average_Concentration > 0.50
ORDER BY pollutant ASC;