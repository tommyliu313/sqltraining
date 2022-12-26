CREATE TABLE employee(
    emp_id NUMBER(3) NOT NULL,
    lastname VARCHAR2(10) NOT NULL,
    firstname VARCHAR2(15) NOT NULL,
    title CHAR(9) NULL,
    salary NUMBER(9,2) NULL,
    CONSTRAINT employee_pk PRIMARY KEY (emp_id),
    CONSTRAINT employee_salary_cc CHECK (salary >= 5000)
)