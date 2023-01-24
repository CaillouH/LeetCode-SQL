# Write your MySQL query statement below
WITH cte 
    AS(SELECT project_id,
              COUNT(employee_id) AS count 
         FROM Project
       GROUP BY project_id)
       
SELECT project_id
  FROM cte
 WHERE cte.count = (SELECT MAX(count)
                  FROM CTE);
