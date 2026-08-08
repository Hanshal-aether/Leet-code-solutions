SELECT email AS Email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;

Report all duplicate in question we have to " Blindlyfollow as  Rule: Write GROUP BY [column] immediately.
