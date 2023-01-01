CREATE TABLE Actor(
    ID INT IDENTITY PRIMARY KEY ,
    First_Name VARCHAR(255),
    Last_Name VARCHAR(255),
    Last_Update DATETIME
);

CREATE TABLE Category(
    ID INT IDENTITY PRIMARY KEY,
    Name VARCHAR(25),
    Last_Update DATETIME,
)

CREATE TABLE Country(
    ID INT IDENTITY PRIMARY KEY,
    Country VARCHAR(50),
    Last_Update DATETIME
)

CREATE TABLE Language(
    ID INT IDENTITY PRIMARY KEY,
    Name VARCHAR(20),
    Last_Update DATETIME
)

CREATE TABLE Film(
    ID INT IDENTITY PRIMARY KEY,
    LanguageID INT,
    Title VARCHAR(255),
    Description VARCHAR(255),
    Release_Year INT,
    Rental_Duration INT,
    Rental_Rate NUMERIC(19,0),
    Length INT,
    Replacement_Cost NUMERIC(19,0),
    Rating INT,
    Last_Update DATETIME,
    Special_Features VARCHAR(255),
    Fulltext VARCHAR(255),
    FOREIGN KEY (LanguageID) REFERENCES Language(ID),
)

CREATE TABLE Film_Actor(
    FilmID INT,
    ActorID INT,
    Last_Update DATETIME,
    FOREIGN KEY (FilmID) REFERENCES Film(FilmID),
    FOREIGN KEY (ActorID) REFERENCES Actor(ID),
   
)

CREATE TABLE Film_Category(
    FilmID INT,
    CategoryID INT,
    Last_Update DATETIME,
    FOREIGN KEY (FilmID) REFERENCES Film(FilmID),
    FOREIGN KEY (CategoryID) REFERENCES Category(ID)
)

