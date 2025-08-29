SELECT customer_id, ROUND((purchased_items/carted_items)*100, 2) AS percentage
FROM shopping_cart
ORDER BY customer_id DESC
;