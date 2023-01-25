# Write your MySQL query statement below
SELECT c.customer_id,
       c.name
FROM Customers c
JOIN Orders o USING(customer_id) 
JOIN Product p USING(product_id)
GROUP BY c.customer_id
HAVING 
    SUM(
        IF(MONTH(o.order_date) = 6, o.quantity, 0) * price
    ) >= 100 AND 
    SUM(
        IF(MONTH(o.order_date) = 7, o.quantity, 0) * price
    ) >= 100;