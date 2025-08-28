SELECT 
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name ELSE NULL END) AS Doctor,

    MAX(CASE WHEN Occupation = 'Professor' THEN Name ELSE NULL END) AS Professor,

    MAX(CASE WHEN Occupation = 'Singer' THEN Name ELSE NULL END) AS Singer,

    MAX(CASE WHEN Occupation = 'Actor' THEN Name ELSE NULL END) AS Actor         
FROM (SELECT *, ROW_Number() OVER(PARTITION BY Occupation ORDER BY name) AS rn FROM Occupations) AS tabela
GROUP BY rn
ORDER BY rn
;