# Write your MySQL query statement below
SELECT rnk.player_id,
       rnk.event_date AS first_login
FROM(
     SELECT a.player_id,
            a.event_date,
       RANK() OVER(
           PARTITION BY a.player_id 
               ORDER BY a.event_date ASC) AS event_rank
       FROM Activity a
    ) AS rnk
WHERE rnk.event_rank = 1;

