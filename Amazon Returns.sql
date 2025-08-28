WITH CTE AS
(
SELECT order_id, ROUND(SUM(product_price), 2)*0.15 AS profit, ROUND(SUM(estimated_return_price), 2) AS return_price
FROM amazon_returns
GROUP BY order_id 
)
SELECT order_id
FROM CTE
WHERE profit < return_price
;