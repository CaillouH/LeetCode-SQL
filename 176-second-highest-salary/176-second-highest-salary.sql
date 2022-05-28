# Write your MySQL query statement below
Select 
    IFNULL((
        SELECT distinct salary 
        FROM Employee
        order by Salary desc
        limit 1,1), null) as SecondHighestSalary
