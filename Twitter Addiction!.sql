WITH TweetTimes AS (
    SELECT 
        twitter_id,
        tweet_time,
        LAG(tweet_time) OVER (PARTITION BY twitter_id ORDER BY tweet_time) AS previous_tweet_time
    FROM 
        twitter_addiction
)
SELECT 
    twitter_id, 
    AVG(TIMESTAMPDIFF(MINUTE, previous_tweet_time, tweet_time)) AS average_wait_time
FROM 
    TweetTimes
WHERE 
    previous_tweet_time IS NOT NULL
GROUP BY 
    twitter_id;