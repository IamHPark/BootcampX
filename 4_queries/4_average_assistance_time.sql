/* Get the average time of an assistance request
- subtract two timestamps for duration
*/
SELECT AVG(started_at-completed_at) as average_assistance_request_duration
FROM assistance_requests;
