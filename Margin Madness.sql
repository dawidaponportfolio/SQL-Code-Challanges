SELECT CONCAT(ROUND(AVG(((order_value - item_cost)/order_value))*100, 1),'%') AS avg_profit_margin
FROM cheesecake_margins
;