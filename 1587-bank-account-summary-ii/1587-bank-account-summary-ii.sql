# Write your MySQL query statement below
SELECT u.name, SUM(amount) AS balance
FROM Transactions
INNER JOIN Users u
USING (account)
GROUP BY account
HAVING balance>10000