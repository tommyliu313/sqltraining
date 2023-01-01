

CREATE TABLE Actor(
    idActor INTEGER,
    name_actor VARCHAR(40),
    education VARCHAR(15),
    gender_actor VARCHAR(6),
    nationality VARCHAR(20),
    year_of_birth INTEGER
);


CREATE TABLE Director(
    idDirector INTEGER,
    name_director VARCHAR(40),
    gender_director VARCHAR(6),
    nationality VARCHAR(20),
    year_birth_director INTEGER,
    place_birth_director INTEGER,
    country_director INTEGER
    
);


CREATE TABLE Studio(
    idStudio INTEGER,
    company_name VARCHAR(40),
    city VARCHAR(20),
    founded INTEGER,
    company_type VARCHAR(40)
);

CREATE TABLE Movie(
    idMovie INTEGER,
    idDirector INTEGER,
    idStudio INTEGER,
    name_movie VARCHAR(40),
    country_of_release VARCHAR(20),
    language VARCHAR(15),
    filming_location VARCHAR(30),
    year_of_release INTEGER,
    category VARCHAR(20),
    FOREIGN KEY (idDirector) REFERENCES Director(idDirector),
    FOREIGN KEY (idStudio) REFERENCES Director(idStudio)
);


CREATE TABLE Casts(
    idCasts INTEGER,
    idMovie INTEGER,
    idActor INTEGER,
    roletype VARCHAR(20),
    FOREIGN KEY (idActor) REFERENCES Actor(idActor),
    FOREIGN KEY (idMovie) REFERENCES Movie(idMovie)
);


