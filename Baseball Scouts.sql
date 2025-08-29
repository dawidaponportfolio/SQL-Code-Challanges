SELECT player_id, 
batting_average, 
CASE 
  WHEN batting_average >= 0.38 THEN "Great Hitter"
  WHEN batting_average <= 0.37 AND batting_average >= 0.27 THEN "Average"
  WHEN batting_average < 0.27 THEN "Below Average"
END AS skill_level
FROM players
;