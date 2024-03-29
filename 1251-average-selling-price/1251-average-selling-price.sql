# Write your MySQL query statement below
SELECT a.product_id,
    ROUND(SUM(b.units*a.price)/SUM(b.units),2) 
    AS average_price
FROM Prices AS a
JOIN UnitsSold AS b
ON a.product_id=b.product_id AND (b.purchase_date 
                                  BETWEEN a.start_date 
                                  AND a.end_date)
GROUP BY product_id;
