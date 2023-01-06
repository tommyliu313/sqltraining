CREATE PROCEDURE SelectAllCustomers @City nvarchar(30)
AS
SELECT * FROM Customers WHERE City =  @City
GO;

CREATE PROCEDURE SelectAllCustomers2 @City nvarchar(30), @PostalCode nvarchar(10)
AS
SELECT * FROM Customers WHERE City = @City AND PostalCode = @PostalCode
GO;

EXEC SelectAllCustomers @City = 'London';
EXEC SelectAllCustomers2 @City = 'London', @PostalCode = 'WA1 1DP';