
SELECT sit 
FROM ministers
WHERE sit%2 = 0 AND (is_next_gov = 1 OR is_next_gov = 'yes') AND (	is_spoke_bad = 0 OR is_spoke_bad = 'no')
;