SELECT player, points, DENSE_RANK() OVER(ORDER BY points DESC) AS rank
FROM player_totals
ORDER BY points DESC, player DESC
;