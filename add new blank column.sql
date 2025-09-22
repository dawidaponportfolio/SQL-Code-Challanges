ALTER TABLE Products
ADD COLUMN discount int
;

UPDATE Products
SET discount = ''
WHERE discount IS NULL
;


SELECT *
FROM Products
;