CREATE TABLE Person(
    DriverID INTEGER,
    Address VARCHAR(255),
    Name VARCHAR(255)
);

CREATE TABLE Accident (
    ReportNum INTEGER,
    Location VARCHAR(255),
    AccidentDate DATETIME
);



CREATE TABLE Car (
    License INTEGER NOT NULL,
    DriverID INTEGER NOT NULL,
    Model VARCHAR(255) NOT NULL,
    Year INTEGER,
    FOREIGN KEY (DriverID) REFERENCES Person(DriverID),
);

CREATE TABLE Car_Accident (
    DamageAmount NUMERIC(19,0),
    License INTEGER NOT NULL,
    ReportNum INTEGER,
    FOREIGN KEY (ReportNum) REFERENCES Accident(ReportNum),
    FOREIGN KEY (License) REFERENCES Car(License)
);