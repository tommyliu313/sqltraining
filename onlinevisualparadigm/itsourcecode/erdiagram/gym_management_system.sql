CREATE TABLE Client(
    client_ID int(11),
    fname varchar(255),
    lname int(11),
    gender text,
    age int(11),
    contact_id int(11),
    email varchar(255),
    password varchar(255)
)

CREATE TABLE Membership(
    client_ID int(11),
)

CREATE TABLE Transaction_Records(
    trans_ID int(11),
    trans_name varchar(30),

)