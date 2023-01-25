# Write your MySQL query statement below
SELECT id, 
       name 
From Students 
Where department_id 
NOT IN(SELECT id 
         FROM departments);
