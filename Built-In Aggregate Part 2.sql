SELECT id, price, (price-(SELECT AVG(price) FROM items)) AS diff_from_avg
FROM items
ORDER BY diff_from_avg DESC;