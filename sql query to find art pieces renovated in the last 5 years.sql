WITH CTE AS 
(
SELECT art_name, artist, (JULIANDAY('2024-01-01') - JULIANDAY(last_renovation))/365 AS diff
FROM Art
)
SELECT art_name, artist
FROM CTE
WHERE diff <= 5
;