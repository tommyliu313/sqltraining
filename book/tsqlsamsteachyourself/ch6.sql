--ch6-3
SELECT BusinessEntityID, PersonType, LastName FROM Person.Person
WHERE PersonType = 'EM' AND LastName LIKE 'MA%'

--ch6-6
SELECT DATEPART(d, GetDate()) AS DayOfMonth
SELECT DATEPART(m, GetDate()) AS MonthOfYear
SELECT DATEPART(yyyy, GetDate()) AS YearOfDate
SELECT DATEPART(DAYOFYEAR, GetDate()) AS DayOfTheYear
SELECT DATEPART(WEEKDAY, GetDate()) AS DayOfTheWeek
SELECT DATEPART(WEEK, GetDate()) AS WeekOfTheYear

--ch6-7

SELECT CONVERT(DATE, DATEADD(d, 10, GETDATE())) AS Add10Days
SELECT CONVERT(DATE, DATEADD(m, 1, GETDATE())) AS Add1Month

--ch6-8

SELECT DATEDIFF(d, GETDATE(), '12/31/14') AS NumberofDays
SELECT DATEDIFF(d, GETDATE(), '12/31/14') AS NumberofMonths
SELECT DATEDIFF(yyyy, GETDATE(), '12/31/14') AS NumberofYears
SELECT DATEDIFF(q, GETDATE(), '12/31/14') AS NumberofQuarters

--ch6-9
SELECT BusinessEntityID, FirstName, LastName, ModifiedDate
    FROM Person.Person
    WHERE ModifiedDate BETWEEN '1/1/2023' AND '12/31/2024'
    ORDER BY ModifiedDate

--ch6-10
SELECT BusinessEntityID, FirstName, LastName, ModifiedDate
    FROM Person.Person
    WHERE ModifiedDate BETWEEN '1/1/2023' AND '12/31/2024'
    ORDER BY ModifiedDate DESC