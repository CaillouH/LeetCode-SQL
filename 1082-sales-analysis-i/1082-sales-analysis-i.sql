# Write your MySQL query statement below
WITH cte AS(
            SELECT seller_id,
                   SUM(price) AS totalsales
              FROM Sales
          GROUP BY seller_id)

SELECT seller_id
  FROM cte
WHERE totalsales = (SELECT MAX(totalsales) FROM cte);

