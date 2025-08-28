
SELECT customer_id, storage_used-200 AS fees
FROM cloud_storage
WHERE storage_used > 200
ORDER BY fees DESC;