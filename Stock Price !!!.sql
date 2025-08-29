SELECT stock, 
  SUM(CASE 
  WHEN action = 'Sell' THEN price
  WHEN action = 'Buy' THEN -price
  END) as Capital_Gain_Loss
FROM stock_price
GROUP BY stock
;