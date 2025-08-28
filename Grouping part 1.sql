SELECT type, ROUND(AVG(pH), 2) AS ph_average, ROUND((MAX(pH) - MIN (pH)), 2) AS ph_max_min_diff
FROM foods
GROUP BY type
ORDER BY ph_max_min_diff DESC
;