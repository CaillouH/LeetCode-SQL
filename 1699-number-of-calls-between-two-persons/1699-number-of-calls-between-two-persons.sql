# Write your MySQL query statement below
SELECT 
    LEAST(from_id,to_id) as person1,
    GREATEST(from_id,to_id) as person2,
COUNT(*) AS call_count,
SUM(duration) AS total_duration
FROM Calls
GROUP BY person1,person2