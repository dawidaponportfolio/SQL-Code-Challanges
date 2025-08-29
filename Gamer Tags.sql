SELECT First_Name, 
Last_Name, 
CONCAT ((LEFT(First_Name, 3)), (LEFT(birth_date, 4))) AS gamertag
FROM gamer_tags
ORDER BY gamertag ASC;