SELECT product_name, ROUND(((sales_price - purchase_price)*0.93), 2) AS profit_margin
FROM products
GROUP BY product_name
ORDER BY profit_margin DESC, product_name ASC;