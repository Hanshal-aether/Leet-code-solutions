/* 
STUDENT LEARNING NOTES:
- Use GROUP BY player_id to bundle all the log-in records for each individual player.
- Use MIN(event_date) to find the earliest (first) date inside each player's bundle.
- Rename the output column header to first_login to match LeetCode's requirements.
*/

SELECT player_id, MIN(event_date) AS first_login
FROM  Activity GROUP BY player_id;
