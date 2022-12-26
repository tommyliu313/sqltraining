CREATE TABLE Staff(
    staffNo VARCHAR2(15) NULL,
    IName VARCHAR2(15) NULL,
    salary NUMBER(7,2) NULL
)

INSERT INTO Staff VALUES('SG16','Brown',8300);

SELECT staffNo, IName, salary FROM Staff WHERE salary > 10000;