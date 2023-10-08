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