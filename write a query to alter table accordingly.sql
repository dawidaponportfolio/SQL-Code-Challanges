ALTER TABLE Orders
ADD COLUMN sales_tax INT
;

UPDATE Orders
SET sales_tax = total_amount*0.08
;

SELECT order_id, total_amount, sales_tax
FROM Orders
;