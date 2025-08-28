WITH CTE AS
  (
SELECT driver_id, total_rides, 
  CASE 
  WHEN total_rides > 100 THEN 100
  ELSE 0
  END AS bonus100,
    CASE 
  WHEN total_rides > 500 THEN 500
  ELSE 0
  END AS bonus500,
      CASE 
  WHEN total_rides > 1000 THEN FLOOR(total_rides/1000)*1000
  ELSE 0
  END AS bonus1000
FROM lyft_bonuses
GROUP BY driver_id  
  )
SELECT driver_id, total_rides, (bonus100 + bonus500 + bonus1000) AS bonus
FROM CTE
ORDER BY driver_id ASC
;