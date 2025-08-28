WITH SlowestCTE AS
  (
SELECT DISTINCT'Slowest' AS Label, time_in_seconds
FROM nascar_times
ORDER BY time_in_seconds DESC
LIMIT 3  
  ), FastestCTE AS
  (
 SELECT DISTINCT'Fastest' AS Label, time_in_seconds
FROM nascar_times
ORDER BY time_in_seconds ASC
LIMIT 3   
  ), FinalCTE AS
 (
SELECT *, RANK() OVER(ORDER BY time_in_seconds DESC) AS Rankings
FROM SlowestCTE
UNION ALL
SELECT *, RANK() OVER(ORDER BY time_in_seconds ASC) AS Rankings
FROM FastestCTE  
 ) 
SELECT *
FROM FinalCTE
ORDER BY Label DESC, Rankings ASC
;