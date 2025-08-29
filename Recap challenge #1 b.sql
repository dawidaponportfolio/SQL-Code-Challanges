SELECT model AS id
FROM cellphones
WHERE (id LIKE 'm%' AND id LIKE '__o%') AND (wifi_5g = 1) AND (price BETWEEN 1000 AND 1500);