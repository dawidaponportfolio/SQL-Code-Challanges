SELECT isp_name, 
  AVG((CASE 
  WHEN end_time IS NOT NULL 
  THEN
  TIMESTAMPDIFF(MINUTE, STR_TO_DATE(start_time, '%m/%d/%Y %H:%i'), STR_TO_DATE(end_time, '%m/%d/%Y %H:%i')) 
  END)) AS Average_Outage_Duration,
  SUM(CASE WHEN end_time IS NULL THEN 1 ELSE 0 END) AS Ongoing_Outages
FROM isp_outages
GROUP BY isp_name
ORDER BY Average_Outage_Duration DESC
;


-- The AVG function ignores any null values the input expression might contain. 