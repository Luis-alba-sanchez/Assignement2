CREATE TABLE artist(
   Id_artist BIGINT NOT NULL,
   first_name VARCHAR(50) NOT NULL,
   last_name VARCHAR(50) NOT NULL,
   pseudo VARCHAR(50),
   biography VARCHAR(500) NOT NULL,
   email VARCHAR(150) NOT NULL,
   pasword VARCHAR(50) NOT NULL,
   date_of_birth DATE,
   PRIMARY KEY(Id_artist)
);

CREATE TABLE art(
   Id_art BIGINT NOT NULL,
   image JSON,
   art_name VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_art)
);

CREATE TABLE Visitor(
   Id_Visitor BIGINT NOT NULL,
   first_name VARCHAR(50) NOT NULL,
   last_name VARCHAR(50) NOT NULL,
   pseudo VARCHAR(50),
   email VARCHAR(150) NOT NULL,
   pasword VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_Visitor)
);

CREATE TABLE autor(
   Id_artist BIGINT NOT NULL,
   Id_art BIGINT NOT NULL,
   PRIMARY KEY(Id_artist, Id_art),
   FOREIGN KEY(Id_artist) REFERENCES artist(Id_artist),
   FOREIGN KEY(Id_art) REFERENCES art(Id_art)
);

CREATE TABLE Favori(
   Id_art BIGINT NOT NULL,
   Id_Visitor BIGINT NOT NULL,
   PRIMARY KEY(Id_art, Id_Visitor),
   FOREIGN KEY(Id_art) REFERENCES art(Id_art),
   FOREIGN KEY(Id_Visitor) REFERENCES Visiteur(Id_Visitor)
);
