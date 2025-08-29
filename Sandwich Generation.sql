SELECT br.bread_name, mt.meat_name
FROM bread_table AS br
CROSS JOIN meat_table AS mt
ORDER BY bread_name ASC, meat_name ASC;