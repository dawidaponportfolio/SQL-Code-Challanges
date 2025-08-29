WITH fixed AS
(
SELECT model, brand, lights, (price + (SELECT AVG(price) FROM scooters)) AS fixed_price
FROM scooters
)
SELECT brand, AVG(fixed_price) AS avg_price
FROM fixed
WHERE model IS NOT NULL AND lights = 1
GROUP BY brand
ORDER BY avg_price ASC
;
