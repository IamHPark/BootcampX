/* calculate the average total duration of assistance requests of each cohort
- return a single row
*/

SELECT avg(total_duration) as average_total_duration
FROM (SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
  FROM assistance_requests
    JOIN students ON student_id = students.id
    JOIN cohorts ON cohorts.id = students.cohort_id
  GROUP BY cohorts.name)
  as total_durations;