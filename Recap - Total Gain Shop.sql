SELECT category, SUM(((price + (SELECT AVG(price)
FROM shop WHERE list_date BETWEEN '2015-01-01' AND '2015-03-18'))*quantity)) AS total_revenue
FROM shop
WHERE list_date BETWEEN '2015-01-01' AND '2015-03-18'
GROUP BY category
ORDER BY total_revenue DESC
;