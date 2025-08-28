SELECT MONTH(date) AS Month, SUM(profit) AS agg_profits
FROM profits
GROUP BY Month
HAVING Month <= 6 AND agg_profits > 0
ORDER BY agg_profits DESC
;