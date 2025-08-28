WITH CTE1 AS 
  (
SELECT year_played, season_attendance, SUM(season_attendance) AS suma
FROM football_attendance
GROUP BY year_played
  ), CTE2 AS
  (
  SELECT *, RANK() OVER(ORDER BY suma DESC) AS ranga
  FROM CTE1
  )
SELECT year_played, suma AS season_attendance
FROM CTE2
WHERE ranga = 1
;