# Write your MySQL query statement below
SELECT C.name as Customers
FROM Customers as c
LEFT JOIN Orders as o
ON c.id = o.customerId  
WHERE o.CustomerId is NULL