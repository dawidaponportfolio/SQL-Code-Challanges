WITH CTE AS 
(
SELECT park_name, animal_name, COUNT(animal_name) AS sight_count
FROM Animal_Sightings
GROUP BY park_name, animal_name
)
SELECT animal_name, park_name
FROM CTE 
WHERE sight_count > 2
;