SELECT ROUND(AVG(sale_amount), 4) AS average_excluding_nulls, 
  ROUND(AVG(CASE WHEN sale_amount IS NULL THEN 0 ELSE sale_amount END), 4) AS average_including_nulls,
  ROUND(AVG(CASE WHEN sale_amount IS NULL THEN (SELECT MIN(sale_amount) FROM missing_values WHERE sale_amount IS NOT NULL) ELSE sale_amount END), 4) AS average_including_min
FROM missing_values
;