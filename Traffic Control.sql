SELECT flight_id, airline, departure_city, arrival_city, passenger_count
FROM domestic_flights
UNION ALL 
SELECT flight_number, carrier, origin_city, destination_city, passenger_total
FROM international_flights
WHERE international_zone = 'Zone A'
ORDER BY flight_id ASC
;