CREATE TABLE dbo.ChallengeTwoEventCapture(
    EventID int IDENTITY PRIMARY KEY,
    EventTime datetime2,
    EventType nvarchar(100),
    UserName nvarchar(100),
    ObjectName nvarchar(100),
    TSQLCommand nvarchar(2000)
);

CREATE TRIGGER TableEventTrigger
ON DATABASE
FOR DDL_TABLE_EVENTS
AS
INSERT dbo.ChallengeTwoEventCapture(
    EventTime, EventType, UserName, ObjectName, TSQLCommand
)
VALUES(
    GETDATE(),
    EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]','nvarchar(100)'),
    EVENTDATA().value('(/EVENT_INSTANCE/UserName)[1]','nvarchar(100)'),
    EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]','nvarchar(100)'),
    EVENTDATA().value('(/EVENT_INSTANCE/TSQLCommand)[1]','nvarchar(2000)')
);