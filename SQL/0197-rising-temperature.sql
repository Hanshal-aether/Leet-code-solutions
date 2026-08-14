SELECT Today.id
FROM Weather AS Today, Weather AS Yesterday
WHERE DATEDIFF(Today.recordDate, Yesterday.recordDate) = 1
AND Today.temperature > Yesterday.temperature;

/*This problem requires you to compare rows inside the same table, so you use a self-join. 
You duplicate the table in memory, calling one copy Today and the other copy Yesterday.
You cannot rely on IDs to find the previous day because some dates might be skipped in the table. 
Instead, you use the DATEDIFF(date1, date2) function, which subtracts the second date from the first date. 
Setting DATEDIFF(Today.recordDate, Yesterday.recordDate) = 1 guarantees that the rows pair up only if they are exactly one calendar day apart.
After lining up the days, you add a basic check to filter for rows where Today.temperature is strictly greater than Yesterday.temperature.
*/
