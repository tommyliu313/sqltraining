CREATE TABLE Staff(
    staffNo VARCHAR2(5) NULL,
    IName VARCHAR2(15) NULL,
    salary number(7,2) NULL
);

INSERT INTO Staff VALUES ('SG16','Brown',8300);

SELECT staffNo, IName, salary
    FROM staff
    WHERE salary > 10000;