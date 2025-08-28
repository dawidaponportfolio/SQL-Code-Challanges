SELECT TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(address, '-', 1), 'Unit', 1),'Suite', 1)) AS street,
  SUBSTRING_INDEX(SUBSTRING_INDEX(address, '-', 2),'-', -1) AS city,
  SUBSTRING_INDEX(SUBSTRING_INDEX(address, '-', -1), ' ', 1) AS state, 
  SUBSTRING_INDEX(address, ' ', -1) AS postal_code 
FROM addresses
;

lub

SELECT TRIM(CASE
  WHEN SUBSTRING_INDEX(address, '-', 1) LIKE '%Unit%' THEN SUBSTRING_INDEX(address, 'Unit', 1)
  WHEN SUBSTRING_INDEX(address, '-', 1) LIKE '%Suite%' THEN SUBSTRING_INDEX(address, 'Suite', 1)
  ELSE SUBSTRING_INDEX(address, '-', 1)
  END) AS street,
  SUBSTRING_INDEX(SUBSTRING_INDEX(address, '-', 2),'-', -1) AS city,
  SUBSTRING_INDEX(SUBSTRING_INDEX(address, '-', -1), ' ', 1) AS state, 
  SUBSTRING_INDEX(address, ' ', -1) AS postal_code 
FROM addresses
;