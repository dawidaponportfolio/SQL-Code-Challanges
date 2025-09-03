WITH RankCalc AS
(
SELECT card_name, issued_amount, issue_month, RANK() OVER(PARTITION BY card_name ORDER BY issued_amount) AS rank
FROM Cards
), MAXCTE AS
(
SELECT card_name, issued_amount AS max_amount
FROM RankCalc
GROUP BY card_name
HAVING rank = MAX(rank)
), MINCTE AS
(
SELECT card_name, issued_amount AS min_amount
FROM RankCalc
GROUP BY card_name
HAVING rank = MIN(rank)
)
SELECT max.card_name, max_amount - min_amount AS difference
FROM MAXCTE AS max
JOIN MINCTE AS min
ON max.card_name = min.card_name