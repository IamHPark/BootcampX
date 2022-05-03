/* get the name of all teachers that performed an request during a cohort
- select teacher's name and cohort's name
- Don't repeat teacher's name
- Order by teacher's name
- use 'JUL02' for cohort's name
*/

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
  JOIN assistance_requests ON teacher_id = teachers.id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;