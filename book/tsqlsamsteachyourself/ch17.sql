--ch17-1
SELECT FirstName, LastName, dbo.FullName(FirstName, LastName) as FullName
FROM Person.Person

--ch17-2
CREATE FUNCTION ?.[GetTotalINventory] (@ProductID int)