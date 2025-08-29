WITH CTE1 AS
(
SELECT *, ((ink_liters) - (LAG(ink_liters) OVER())) AS ink_diff, ((colors_num) - (LAG(colors_num) OVER())) AS colors_diff
FROM picture_characteristics
JOIN picture_interests
ON picture_characteristics.day_of_month = picture_interests.day_of_month
)
SELECT day_of_month, RANK() OVER(ORDER BY num_people_interested DESC) AS day_rank
FROM CTE1
WHERE (ink_diff + colors_diff + num_people_interested) > 0
ORDER BY day_rank ASC;