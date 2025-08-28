SELECT CASE WHEN product_id > 0 THEN product_id ELSE NULL END AS product_id,
  CASE WHEN quantity_sold >= 0 THEN quantity_sold ELSE 0 END AS quantity_sold,
  CASE WHEN revenue IS NULL THEN (SELECT AVG(revenue) FROM dirty_data) ELSE revenue END AS revenue
FROM dirty_data
;