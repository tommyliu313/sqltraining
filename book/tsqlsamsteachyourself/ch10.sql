--ch10-1
UPDATE Person.Address
SET City = 'Venice Beach'
WHERE City = 'Westlake Village'

UPDATE Production.Product
SET Product.ListPrice = ProductListPriceHistory.ListPrice
FROM Production.Product
INNER JOIN Production.ProductListPriceHistory
ON Product.ProductID = ProductListPriceHistory.ProductID
WHERE GetDate()
BETWEEN ProductListPriceHistory.StartDate
AND ProductListPriceHistory.EndDate

--ch10-3

SELECT
TransactionID, ProductID, ReferenceOrderID, TransactionDate, TransactionType,
Quantity, ActualCost, ModifiedDate
INTO Production.TransactionsOld
FROM Production.TransactionHistory
WHERE TransactionDate < '1/1/2014'