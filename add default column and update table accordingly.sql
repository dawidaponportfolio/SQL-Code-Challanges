ALTER TABLE Products
ADD COLUMN discount DEFAULT 0
;

UPDATE Products
SET discount = 0.1
WHERE product_name LIKE '%laptop%'
;

UPDATE Products
SET discount = 0.05
WHERE product_name LIKE '%smartphone%'
;

UPDATE Products
SET price = price - price*0.05
WHERE product_name LIKE '%smartphone%'
;

UPDATE Products
SET price = price - price*0.1
WHERE product_name LIKE '%laptop%'
;

SELECT *
FROM Products;
