SELECT post_id, (actions/impressions)*100 AS popularity
FROM linkedin_posts
WHERE (actions/impressions)*100 >= 1
ORDER BY popularity DESC
;