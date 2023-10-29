CREATE PROCEDURE procOrderDetailAdd
@SalesOrderID int,
@CarrierTrackingNumber nvarchar(25),
@OrderOty smallint,
@SpecialOfferID int,
@UnitPrice money,
@UnitPriceDiscount money
AS
INSERT INTO Sales.SalesOrderDetail(SalesOrderID, CarrierTrackingNumber, OrderQty, ProductID, SpecialOfferID, UnitPrice, UnitPriceDiscount)
VALUES (@SalesOrderID, @CarrierTrackingNumber, @SpecialOfferID, @CarrierTrackingNumber, @OrderQty, @ProductID, @SpecialOfferID, @UnitPrice, @UnitPriceDiscount)

--ch15-2
CREATE PROCEDURE procOrderDetailAddOutput
@SalesOrderID int,
@CarrierTrackingNumber nvarchar(25),
@OrderQty smallint,
@ProductID int,
@SpecialOfferID int,
@UnitPrice money,
@UnitPriceDiscount money,
@SalesOrderDetailID int = 0 OUTPUT
AS
INSERT INTO Sales.SalesOrderDetail

--ch15-2.5
CREATE PROCEDURE procSalesOrderDetailDelete
@SalesOrderDetailID int
AS
DELETE FROM Sales.SalesOrderDetails
WHERE SalesOrderDetailID = @SalesOrderDetailID
