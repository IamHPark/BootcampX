/* Get the students who's average time it takes to complete an assignment
is less than the average estimated time it takes to complete an assignment
- select name of students, their average completion time, and average suggested completion time
- Order by average completion time from smallest to largest
- Only get currently enrolled students
*/

SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration, AVG(assignments.duration) as average_estimated_duration
FROM assignment_submissions
  JOIN students ON student_id = students.id
  JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assignment_duration;