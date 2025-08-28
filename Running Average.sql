SELECT sale_date, store_id, AVG(daily_sales) OVER(PARTITION BY store_id ORDER BY sale_date) AS running_average
FROM sales_records
ORDER BY store_id, sale_date
;