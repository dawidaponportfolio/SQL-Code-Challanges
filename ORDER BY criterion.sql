SELECT id, ROW_NUMBER() OVER(ORDER BY hue ASC) AS row_num_hue, ROW_NUMBER() OVER(ORDER BY ((rough*hue) / hue) DESC) AS row_num_score
FROM plants
WHERE hue > 0.340
ORDER BY id ASC
;