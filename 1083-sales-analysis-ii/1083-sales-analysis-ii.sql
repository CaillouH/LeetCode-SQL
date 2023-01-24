# Write your MySQL query statement below
SELECT DISTINCT s.buyer_id
  FROM Sales s LEFT JOIN Product p
    ON s.product_id = p.product_id
 WHERE p.product_name = 'S8' 
   AND s.buyer_id 
       NOT IN(  
              SELECT s.buyer_id
              FROM Sales s LEFT JOIN Product p
              ON s.product_id = p.product_id
              WHERE p.product_name = 'iPhone');