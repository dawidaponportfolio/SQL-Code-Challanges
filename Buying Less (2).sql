WITH CTE AS 
(
SELECT Customer_ID, SUM(order_total) AS total_spent, COUNT(*) AS orders
FROM purchases
GROUP BY Customer_ID  
) 
SELECT Customer_ID
FROM CTE
WHERE orders <= 2 OR total_spent < 250
;