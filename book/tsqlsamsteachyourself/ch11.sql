--ch11-3

SELECT ProductDescriptionID,
Description, LEFT(Description, 10)
FROM Production.ProductDescription

--ch11-4
SELECT ProductionDescriptionID,
    Desctiption, RIGHT(Desctiption, 10)
    FROM Production.ProductionDescription

--ch11-12

SELECT ProductDescriptionID, Description,
    LOWER(Description)
    FROM Production.ProductDescription

--ch11-17
SELECT Description, StartDate,
    DATEPART(qq, StartDate) as Quarter,
    DATEPART(DAYOFYEAR, StartDate) as DOY
    FROM Sales.SpecialOffer

