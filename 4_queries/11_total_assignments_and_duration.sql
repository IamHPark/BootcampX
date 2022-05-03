/* get each day with total number of assignments and total duration of the assignments
- select day, number of assignments, total duration
- order by day
*/

SELECT day, count(*) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;