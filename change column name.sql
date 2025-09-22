ALTER TABLE Products
RENAME COLUMN stock to quantity_in_stock
;

SELECT *
FROM Products;