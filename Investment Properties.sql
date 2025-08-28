SELECT property_id, estimated_sale_price - purchase_price AS profit_loss, SUM(estimated_sale_price - purchase_price) OVER(ORDER BY purchase_price ASC) AS running_total
FROM investment_property
;