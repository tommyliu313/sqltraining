CREATE TABLE Doctor(
    DSS int,
    Name VARCHAR(255),
    Specialization VARCHAR(255)
);

CREATE TABLE Patient(
    SS INT,
    DoctorDSS INT,
    Name VARCHAR(255),
    Insurance VARCHAR(255),
    DateAdmitted DATETIME,
    DateCheckedOut DATETIME,
    FOREIGN KEY (DoctorDSS) REFERENCES Doctor(DSS)   
);

CREATE TABLE Test(
    ID INT IDENTITY PRIMARY KEY,
    DoctorDSS INT,
    PatientDSS INT,
    Name VARCHAR(255),
    TestDate DATETIME,
    TestTime DATETIME,
    Result VARCHAR(255),
    FOREIGN KEY (DoctorDSS) REFERENCES Doctor(DSS),
    FOREIGN KEY (PatientDSS) REFERENCES Patient(SS)
)