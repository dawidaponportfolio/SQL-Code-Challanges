WITH CTE AS
(
SELECT book, 
page, 
SUM(words) OVER(PARTITION BY book ORDER BY page ASC) AS total_words,
MAX(words) OVER(PARTITION BY book ORDER BY page ASC) AS max_words,
MIN(words) OVER(PARTITION BY book ORDER BY page ASC) AS min_words,
AVG(words) OVER(PARTITION BY book ORDER BY page ASC) AS avg_words
FROM books
)
SELECT *, RANK() OVER(PARTITION BY book ORDER BY ((avg_words-min_words)/(total_words-min_words)) ASC) AS ratio_rank
FROM CTE
ORDER BY book ASC, ratio_rank ASC
;