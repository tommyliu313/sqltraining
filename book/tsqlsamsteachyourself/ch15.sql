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

