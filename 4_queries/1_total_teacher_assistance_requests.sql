/* Get total number of assisntance requests for a teacher
- Select the teacher's name and total assistance requests
- use 'Waylon Boehm'
*/

SELECT count(*) as total_assistances, teachers.name as name
FROM assistance_requests
  JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;