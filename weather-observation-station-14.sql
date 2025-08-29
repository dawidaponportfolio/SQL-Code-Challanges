SELECT ROUND(MAX(LAT_N), 4)
FROM station
group by id
having ROUND(MAX(LAT_N), 4)< 137.2345
order by ROUND(MAX(LAT_N), 4) DESC
LIMIT 1
;