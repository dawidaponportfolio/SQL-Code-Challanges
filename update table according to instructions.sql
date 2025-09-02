UPDATE Orders 
SET status = 'Processing'
WHERE status = 'Pending'
;

SELECT * FROM Orders;