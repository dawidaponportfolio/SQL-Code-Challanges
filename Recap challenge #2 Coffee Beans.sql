WITH filtered_beans AS
(
    SELECT *
    FROM beans
    WHERE diameter_wide > (SELECT AVG(diameter_wide) FROM beans) 
    AND ((CASE WHEN shade = 'light' THEN density/diameter_wide > 0.1 END) OR shade = 'dark')
)
SELECT brand, 
ROUND((SUM((density - (SELECT AVG(density) FROM beans))*(density - (SELECT AVG(density) FROM beans)))/COUNT(*)), 3) AS STD
FROM filtered_beans
GROUP BY brand
HAVING STD < 0.1
ORDER BY STD ASC;