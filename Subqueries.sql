WITH CTE AS
(
SELECT list_date, category, quantity, (price + 
(
SELECT AVG(price)
FROM shop
WHERE list_date BETWEEN '2015-01-01' AND '2015-03-18'
)) AS new_price, 
quantity*(price + 
(
SELECT AVG(price)
FROM shop
WHERE list_date BETWEEN '2015-01-01' AND '2015-03-18'
)) AS gain
FROM shop
)
SELECT category, SUM(gain) AS total_gain
FROM CTE
WHERE list_date BETWEEN '2015-01-01' AND '2015-03-18'
GROUP BY category
ORDER BY total_gain DESC
;