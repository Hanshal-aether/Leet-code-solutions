 
--STUDENT LEARNING NOTES:
--Use clear names like Employee1 and Managers so the database doesn't get confused.
--Connect them by matching the employee's managerId to the manager's actual id.
--Find rows where the employee makes more money than their boss.

SELECT Employee1.name AS Employee
FROM Employee AS Employee1, Employee AS Managers
WHERE Employee1.managerId = Managers.id
AND Employee1.salary > Managers.salary;
