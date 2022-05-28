CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET n = N-1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT IFNULL(
    (
        SELECT DISTINCT salary 
        FROM employee
        ORDER BY salary DESC
        LIMIT n, 1
    ), NULL)
  );
END