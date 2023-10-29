--ch16-1
CREATE PROCEDURE procEmployeesGetTemp AS
BEGIN 
CREATE TABLE #TempEmployees(
    BusinessEntityID int NOT NULL PRIMARY KEY,
    JobTitle varchar(50),
    HireDate datetime,
    VacationHours int
)
INSERT INTO TempEmployees (BusinessEntityID, JobTitle, HireDate)
EXEC procEmployeesGetByJobTitleAndHireDate '1/1/2009', 
'Production Technician - WC20'
SELECT BusinessEntityID, JobTitle, HireDate, VacationHours
FROM TempEmployees
ORDER BY HireDate DESC
END


--ch16-3
CREATE PROCEDURE procGetString
@FindString varchar(8000)
AS
BEGIN
SET NOCOUNT ON;
DECLARE @SQLCommand varchar(8000)
DECLARE @Where varchar(8000)
DECLARE @ColumnName SYSNAME
DECLARE @Cursor varchar(8000)

SET @SQLCommand = 'SELECT * FROM Person.Address'
SET @Where = ''
SET @Cursor = 'DECLARE FIndCursor CURSOR FOR SELECT COLUMN_NAME
    FROM ' + DB_NAME() + '.INFORMATION_SCHEMA.COLUMNS'

EXEC (@Cursor)

OPEN FindCursor
FETCH NEXT FROM FindCursor INTO @ColumnName

WHILE @@FETCH_STATUS = 0
BEGIN
IF @Where <> ''
    BEGIN
    SET @Where = @Where + ' OR '
    END
SET @Where = @Where + '[' + @ColumnName + '] LIKE"'+ @FindString + '"';
END

END
