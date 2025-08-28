
SELECT name
  FROM customers 
  INNER JOIN date_viewed
  ON customers.customer_id = date_viewed.customer_id
GROUP BY date_viewed.customer_id
  ORDER BY COUNT(date_viewed.customer_id)  DESC
  LIMIT 1;