
SELECT ROUND((right_vote/(right_vote+left_vote))*100, 2) AS right_vote,
  ROUND((left_vote/(right_vote+left_vote))*100, 2) AS left_vote
FROM candy_poll
;
