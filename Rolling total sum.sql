/*
-- Dataset: layoffs from Alex the Analyst
-- Source: https://github.com/AlexTheAnalyst/MySQL-YouTube-Series/blob/main/layoffs.csv
-- Queried using: MySQL Workbench
*/

-- Rolling Total Sum --

SELECT * FROM world_layoffs.layoffs_staging2;

SELECT SUBSTR(`date`, 1, 7) AS daty, total_laid_off
FROM world_layoffs.layoffs_staging2
WHERE SUBSTR(`date`, 1, 7) IS NOT NULL
ORDER BY daty ASC; -- Returns dates and total lay offs for each day


SELECT SUBSTR(`date`, 1, 7) AS daty, SUM(total_laid_off)
FROM world_layoffs.layoffs_staging2
WHERE SUBSTR(`date`, 1, 7) IS NOT NULL
GROUP BY daty
ORDER BY daty ASC; -- Returns dates and total lay offs number for each day [sum]

-- Putting above written SELECT into CTE so I will be able to query on it 

WITH Rolling_Total_laid_off_CTE AS
(
SELECT SUBSTR(`date`, 1, 7) AS daty, SUM(total_laid_off) AS suma 
FROM world_layoffs.layoffs_staging2
WHERE SUBSTR(`date`, 1, 7) IS NOT NULL
GROUP BY daty
ORDER BY daty ASC
)
SELECT daty, suma, SUM(suma) OVER (ORDER BY daty) -- Making it a rolling sum
FROM Rolling_Total_laid_off_CTE;