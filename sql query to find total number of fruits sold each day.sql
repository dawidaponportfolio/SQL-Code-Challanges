SELECT sales_date, SUM(quantity) AS total_fruits_sold
FROM Fruits 
GROUP BY sales_date;