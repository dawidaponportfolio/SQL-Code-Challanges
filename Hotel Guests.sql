SELECT COUNT(*)
FROM hotel_guests
WHERE HOUR(check_out)>= 10
;