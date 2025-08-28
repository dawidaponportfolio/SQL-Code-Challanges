WITH CTE AS
  (
SELECT *, 'external' AS tag
FROM external_sales
UNION
SELECT *, 'internal'
FROM internal_sales 
  )
SELECT category, 
  ROUND(SUM(CASE WHEN tag = 'internal' THEN revenue_external ELSE 0 END), 2) AS Total_Internal_Revenue,
  ROUND(SUM(CASE WHEN tag = 'external' THEN revenue_external ELSE 0 END), 2) AS Total_External_Revenue,
  ROUND(SUM(revenue_external), 2) AS Total_Category_Revenue
FROM CTE
JOIN product_info
ON CTE.product = product_info.product_name
GROUP BY category
ORDER BY Total_Category_Revenue DESC
;