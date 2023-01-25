# Write your MySQL query statement below
SELECT stu.student_id,
       stu.student_name,
       sbj.subject_name,
       COUNT(e.subject_name) AS attended_exams
  FROM Students stu
  JOIN Subjects sbj
 LEFT JOIN Examinations e
    ON stu.student_id = e.student_id 
   AND sbj.subject_name = e.subject_name
GROUP BY stu.student_id,
         sbj.subject_name
ORDER BY student_id, subject_name;
