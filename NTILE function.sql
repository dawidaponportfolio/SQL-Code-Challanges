SELECT creature_name, NTILE((SELECT COUNT(*) FROM CREATURES)/2) OVER(PARTITION BY has_legs ORDER BY preference) AS couple_matcher
FROM creatures
ORDER BY couple_matcher ASC, creature_name ASC
;
