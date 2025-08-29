SELECT *, 
  CASE 
  WHEN laptop_name LIKE '%SSD%' THEN 'SSD'
  WHEN laptop_name LIKE '%HDD%' THEN 'HDD'
  END AS storage_type
FROM laptops
ORDER BY laptop_id ASC
;