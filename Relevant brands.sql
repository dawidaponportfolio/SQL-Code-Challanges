WITH CTE1 AS
(
SELECT book.brand, sugar/243 AS choc_num, ROUND(AVG(chocolates), 2) AS choc_avg, ROW_NUMBER() OVER(ORDER BY book.brand DESC) AS row_num
FROM factory
JOIN book
ON factory.brand = book.brand
GROUP BY book.brand
)
SELECT *
FROM CTE1
WHERE row_num%2 = 0
ORDER BY choc_avg DESC;