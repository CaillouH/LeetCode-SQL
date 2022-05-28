# Write your MySQL query statement belows
SELECT Email
FROM Person
GROUP BY Email 
HAVING COUNT(Email)>1