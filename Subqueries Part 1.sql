SELECT *
FROM shop
WHERE price > (SELECT AVG(price) FROM shop)
;