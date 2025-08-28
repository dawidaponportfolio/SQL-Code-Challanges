SELECT sale_id, 
  product_name, 
    CASE 
  WHEN units_sold IS NOT NULL THEN units_sold
  ELSE (SELECT AVG(units_sold) FROM sales)
    END AS units_sold, 
    CASE
  WHEN profit IS NOT NULL THEN profit
  ELSE 0
    END AS profit
FROM sales
;