# Write your MySQL query statement below
SELECT unique_id, 
       name 
From Employees e
LEFT JOIN EmployeeUNI uni
USING(id);
