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