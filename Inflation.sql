WITH CTE AS
  (
SELECT country, year, consumer_price_index,  LAG(consumer_price_index) OVER(PARTITION BY country ORDER BY year ASC) AS consumer_price_index2
FROM inflation  
  ), CTE2 AS
  (
SELECT country, year, ((consumer_price_index - consumer_price_index2)/consumer_price_index2) * 100 AS inflation
FROM CTE
WHERE consumer_price_index2 IS NOT NULL  
  ), CTE3 AS
  (
 SELECT country, AVG(inflation) AS avg_inflation_rate
FROM CTE2
GROUP BY country 
  )
SELECT *, RANK() OVER(ORDER BY avg_inflation_rate DESC) AS ranks
FROM CTE3
;
