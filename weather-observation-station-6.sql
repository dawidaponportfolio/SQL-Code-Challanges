SELECT DISTINCT city
from station
where city LIKE 'a%' 
OR city LIKE 'e%'
OR city LIKE 'i%'
OR city LIKE 'o%'
OR city LIKE 'u%'
;




-- or


SELECT DISTINCT city
from station
where SUBSTR(city,1,1) IN ('a','e','i','o','u')
;