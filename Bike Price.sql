SELECT ROUND(AVG(bike_price), 2)
FROM inventory
WHERE bike_sold LIKE 'Y';