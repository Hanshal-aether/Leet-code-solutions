SELECT Employee.name, Bonus.bonus
FROM Employee
LEFT JOIN Bonus ON Employee.empId = Bonus.empId
WHERE Bonus.bonus < 1000 OR Bonus.bonus IS NULL;

--whenever in question its asking to  checking for empty or blank records Blindly following rule is "Never write = NULL. Always type IS NULL"
