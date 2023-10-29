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

--ch11-19
SELECT Description, StartDate,

--ch11-20
SELECT Description, StartDate, EndDate,
    DATEDIFF(dd, StartDate, EndDate) AS DayDiff,
    DATEDIFF(mm, StartDate, EndDate) AS MonthDiff
    FROM Sales.SpecialOffer

--ch11-21
SELECT Description, MinQty,
    MaxQty, ISNULL(MaxQty, 100) AS PlugValue
    FROM Sales.SpecialOffer

--ch11-22
SELECT AVG(MinQty) AS WithZero,
    AVG(NULLIF(MinQty, 0)) AS NoZero
    FROM Sales.SpecialOffer

--ch11-23
SELECT Title, MiddleName, FirstName,
COALESCE(Title, MiddleName, FirstName)
FROM Person.Person