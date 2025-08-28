
SELECT country, ROUND(SUM(carbon_emissions_millions), 1) AS Total_Greenhouse_Gases
FROM greenhouse_gases
WHERE year BETWEEN 2020 AND 2022
GROUP BY country
ORDER BY Total_Greenhouse_Gases DESC
LIMIT 1;