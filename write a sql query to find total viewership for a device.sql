SELECT SUM(CASE WHEN device_type LIKE '%Laptop%' THEN 1 ELSE 0 END) AS laptop_views,
SUM(CASE WHEN device_type LIKE '%Phone%' OR device_type LIKE '%Tablet%'  THEN 1 ELSE 0 END) AS mobile_views
FROM Viewership
;