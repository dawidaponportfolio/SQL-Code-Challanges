SELECT 
  CASE 
  WHEN response = 'Yes' THEN 'Y'
  WHEN response = 'Y' THEN 'Y'
  WHEN response = 'No' THEN 'N'
  WHEN response = 'N' THEN 'N'
  END AS standardized
FROM responses
;