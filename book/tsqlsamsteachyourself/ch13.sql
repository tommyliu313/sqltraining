--ch13-8

--ch13-14
IF Month(GetDate()) > 6
    BEGIN
        PRINT 'In IF Statement'
        GOTO MyLabel
    END
SELECT FirstName, LastName FROM Person.Person
RETURN

--ch13-17
USE [AdventureWorks2014]
GO

DECLARE @return_value int

EXEC @return_value = [dbo].[procCASEELSE]

SELECT 'Return Value' = @return_value
GO

--ch13-18

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MyTable]'))

CREATE TABLE MyTable(
    LoopID INT,
    LoopText VarChar(25)
)

DECLARE @LoopValue INT
DECLARE @LoopText CHAR(25)

SELECT @LoopValue = 1

WHILE (@LoopValue < 100)
BEGIN
    SELECT @LoopText = 'Iteration #' + Convert(VarChar(25),  @LoopValue)
    INSERT INTO MyTable(LOopID, LoopText) VALUES (@LoopValue, @LoopText)
    SELECT @LoopValue = @LoopValue + 1
END

SELECT * FROM MyTable