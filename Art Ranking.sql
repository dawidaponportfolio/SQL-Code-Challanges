SELECT DISTINCT artist_id, SUM(score) total_score, RANK() OVER(ORDER BY total_score DESC) as ranga
FROM rankings
  GROUP BY artist_id
  ORDER BY ranga ASC, artist_id ASC;