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

--ch18-8

CREATE TRIGGER [Person].[UpdatePerson]
    ON [Person].[Person]
    FOR UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @BusinessEntityID int
    DECLARE @FullName varchar(100)
    DECLARE @AuditAction varchar(500)

    IF UPDATE(FirstName)
        BEGIN
            SELECT @AuditAction = 'First Name Updated,'
        END
    IF UPDATE(FirstName)
        BEGIN
            SELECT @AuditAction = @AuditAction + 'Middle Name Updated,'
        END        
    IF UPDATE(LastName)
        BEGIN
            SELECT @AuditAction = @AuditAction + 'Last Name Updated,'
        END
        SET @AuditAction = LEFT(@AuditAction, LEN(@AuditAction) - 1)
        INSERT INTO tblAuditLog
            (BusinessEntityID, EmployeeName, AuditAction, AuditTimeStamp)
            SELECT i.BusinessEntityID, i.FirstName + ' ' + i.MiddleName + ' ' + i.LastName,
            @AuditAction,
            GetDate()
            FROM inserted i, deleted d
            WHERE i.BusinessEntityID = d.BusinessEntityID
END

--ch18-9

CREATE TRIGGER [Person]