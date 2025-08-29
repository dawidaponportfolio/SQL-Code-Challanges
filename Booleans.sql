SELECT *
FROM objects
WHERE (colorful = 1 AND is_fragile = 0) OR (in_stock > 0 AND size <= 2);