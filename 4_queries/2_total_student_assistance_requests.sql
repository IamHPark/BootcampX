/* GET the total number of assistance requests for a student
- select student's name and total assistance requests
- use 'Elliot Eickinson'
*/

SELECT count(*) as total_assistances, students.name
FROM assistance_requests
  JOIN students ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;
