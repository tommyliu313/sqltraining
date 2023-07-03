/*https://itsourcecode.com/uml/course-registration-system-er-diagram/*/

CREATE TABLE Registrar(
    registar_ID int(11),
    name varchar(255),
    age int(11),
    gender varchar(255),
    contact int(11),
    address text,
    username varchar(255),
    password varchar(255)
)

CREATE TABLE Course(
    course_ID int(11) NOT NULL,
    name varchar(255),
    description text,
    subjects text,
    pre-requisities text,
    registrees_ID int(11)
)

CREATE TABLE Requirements(
    requirements_ID int(11) NOT NULL,
    registration_ID int(11) NOT NULL,
    course_ID int(11) NOT NULL,
    birth_cert varchar(255),
    prev_grades varchar(255),
    good_moral varchar(255),
    qualification varchar(255),
    sub_date DATE
)

CREATE TABLE Registration(
    registration_ID int(11) NOT NULL,
    fname int(11) NOT NULL,
    lname varchar(255) NOT NULL,
    age int(11) NOT NULL,
    gender varchar(255) NOT NULL,
    contact int(11) NOT NULL,
    address TEXT,
    course_ID int(11) NOT NULL,
    date DATE
)