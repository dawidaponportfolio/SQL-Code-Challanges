WITH CTE AS 
(
SELECT *, RANK() OVER(PARTITION BY season ORDER BY points DESC) AS ranga
FROM PlayerStats ps
JOIN Teams t
ON ps.player_id = t.player_id
)
SELECT player_name, team, city, COUNT(*) AS top3_count
FROM CTE 
WHERE ranga < 4
GROUP BY player_name
HAVING top3_count > 1
;