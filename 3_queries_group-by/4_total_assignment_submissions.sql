/* Get the total number of assignment submissions for each cohort.
- Select the cohort name and total submissions.
- Order the results from greatest to least submissions.
*/

SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM cohorts
  JOIN students ON cohort_id = cohorts.id
  JOIN assignment_submissions ON student_id = students.id
GROUP BY cohort
ORDER BY total_submissions
DESC;