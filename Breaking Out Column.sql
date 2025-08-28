SELECT SUBSTRING_INDEX (address, '-', 1) AS street,
  SUBSTRING_INDEX(SUBSTRING_INDEX (address, '-', 2), '- ', -1) AS city,
  SUBSTRING_INDEX(SUBSTRING_INDEX (address, '- ', -2), '-', 1) AS state, 
  SUBSTRING_INDEX (address, '- ', -1) AS zip_code
FROM addresses
LIMIT 10;