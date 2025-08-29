SELECT brand, AVG((price + (SELECT AVG(price) FROM scooters))) AS avg_price
FROM scooters
WHERE has_lights = 1 AND model IS NOT NULL
GROUP BY brand
ORDER BY avg_price ASC
;