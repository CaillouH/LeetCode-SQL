# Write your MySQL query statement below
SELECT DISTINCT c.title
FROM TVProgram tv
LEFT JOIN Content c
  ON tv.content_id = c.content_id
 AND c.content_type = 'Movies'
WHERE c.Kids_content = 'Y'
    AND tv.program_date between "2020-06-01" and '2020-06-30';