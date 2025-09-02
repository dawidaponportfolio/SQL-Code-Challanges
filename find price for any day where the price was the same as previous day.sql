WITH CTE AS
(
SELECT price_date, price, LAG(price) OVER(ORDER BY price_date) AS prev_price
FROM Prices
)
SELECT price_date, price
FROM CTE 
WHERE price = prev_price
;