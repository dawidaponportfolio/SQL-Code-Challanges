SELECT book.brand, sugar/243 AS choc_num, ROUND(AVG(chocolates), 2) AS choc_avg
FROM factory
JOIN book
ON factory.brand = book.brand
GROUP BY book.brand
ORDER BY choc_avg DESC;