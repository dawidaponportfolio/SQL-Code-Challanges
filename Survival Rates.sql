
SELECT Cancer_Type, 
  COUNT(*) AS Total_Patients, 
  SUM(CASE WHEN survival_status = 'Alive' THEN 1 ELSE 0 END) Total_Survivors,  
  (SUM(CASE WHEN survival_status = 'Alive' THEN 1 ELSE 0 END)/ COUNT(*))*100 AS Survival_Rate
FROM cancer_data
GROUP BY cancer_type
ORDER BY Survival_Rate  DESC;