/* Get important data about each assistance request.
- Select teacher's name, student's name, assignment's name
  and duration of each assistance request
- (completed_at) - (started_at)
- Order by the duration
*/

SELECT teachers.name as teacher, students.name as student, assignments.name as assignment,
  (completed_at - started_at) as duration
FROM assistance_requests
  JOIN teachers ON teachers.id = teacher_id
  JOIN students ON students.id = student_id
  JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;