SELECT 
    CASE 
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A != B and B != C and C != A THEN 'Scalene'
        ELSE 'Isosceles'
    END
FROM triangles
;