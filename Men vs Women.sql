SELECT gender, ROUND(AVG(total_purchase), 2) AS total_purchase
FROM purchases
GROUP BY gender;