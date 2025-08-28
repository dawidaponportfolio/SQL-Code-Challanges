WITH CTE_WALK_COUNT AS
  (
  SELECT owner_name, dog_name, COUNT(times_walked) AS walk_count
FROM walks
GROUP BY owner_name, dog_name
  )
SELECT DISTINCT owner_name, 
  CASE
  WHEN walk_count >= 5 THEN 'Good Owner'
  ELSE 'Bad Owner'
  END AS owner_type
FROM CTE_WALK_COUNT
ORDER BY owner_name ASC
;