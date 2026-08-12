-- STUDENT LEARNING NOTES:
-- Use LEFT JOIN because the problem says to report NULL if the address is not present.
-- A regular inner join would delete people who do not have an address row.
-- Match both tables completely using the common personId column.


SELECT Person.firstName, Person.lastName, Address.city, Address.state
FROM Person
LEFT JOIN Address ON Person.personId = Address.personId
