--ch14-2
--CREATE PROCEDURE procPersonGetNoCount AS
--SET NOCOUNT ON
--SELECT BusinessEntityID, FirstName, LastName
--FROM Person.Person
--ORDER BY LastName, FirstName
--SELECT @@RowCount as NumberOfPeople



--ch14-8
CREATE PROCEDURE procEmployeeGetByTitleAndBirthDateOpt
    @JobTitle nVarChar(50) = NULL,
    @BirthDate DateTime
AS
IF @JobTitle IS NULL
    BEGIN
    SELECT BusinessEntityID, JobTitle, BirthDate,
        HireDate, VacationHours
    FROM HumanResources.Employee
    WHERE BirthDate >= @BirthDate
    ORDER BY BirthDate
    END
ELSE
    BEGIN
    SELECT BusinessEntityID, JobTitle, BirthDate, HireDate, VacationHours
    FROM HumanResources.Employee
    WHERE JobTitle = @JobTitle AND
        BirthDate >= @BirthDate
    ORDER BY BirthDate
    END


--ch14-10

CREATE PROCEDURE procOrderDetailAddHandleError3
@SalesOrderID int,
@CarrierTrackingNumber nvarchar(25),
@OrderQty smallint,
@ProductID int,
@UnitPrice money,
@UnitPriceDiscount money,
@SalesOrderDetailID int = 0 OUTPUT,
@LocalError int = 0 OUTPUT,
@LocalRows int = 0 OUTPUT
AS
INSERT INTO Sales.SalesOrderDetail (SalesOrderDetailID, CarrierTrackingNumber, OrderQty, ProductID, UnitPrice, UnitPriceDiscount)
VALUES(@SalesOrderID, @CarrierTrackingNumber, @OrderQty, @ProductID, @UnitPrice, @UnitPriceDiscount)
SELECT @SalesOrderDetailID = @@Identity, 
    @LocalError = @@Error, @LocalRows = @@RowCount
SELECT @SalesOrderDetailID, @LocalError, @LocalRows    


 