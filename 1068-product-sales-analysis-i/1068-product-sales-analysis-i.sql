# Write your MySQL query statement below
SELECT DISTINCT 
    P.product_name, S.year, S.price 
FROM 
    (SELECT DISTINCT product_id, year, price FROM Sales) AS S
INNER JOIN
    Product AS P
USING (product_id);
