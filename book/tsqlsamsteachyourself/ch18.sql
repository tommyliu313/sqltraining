--ch18-4

CREATE TRIGGER InsertPerson
    ON Person.Person
    FOR INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @FullName varchar(100)
    SELECT @FullName = ()
END
GO