# DC schema

# --- !Ups

CREATE TABLE SHOW (
  ID       INTEGER  NOT NULL AUTO_INCREMENT PRIMARY KEY,
  MOVIE    INTEGER  NOT NULL,
  LOCATION INTEGER  NOT NULL,
  START    DATETIME NOT NULL,
  END      DATETIME,
  FOREIGN KEY (MOVIE) REFERENCES MOVIE (ID),
  FOREIGN KEY (LOCATION) REFERENCES LOCATION (ID)
);

CREATE TABLE CINEMA (
  ID       INTEGER      NOT NULL AUTO_INCREMENT PRIMARY KEY,
  TITLE    VARCHAR(255) NOT NULL,
  RELEASE  DATETIME,
  COUNTRY  VARCHAR(255),
  DIRECTOR VARCHAR(255),
  SYNOPSIS TEXT,
  IMDB     VARCHAR(255),
  TOMATOES VARCHAR(255),
  DETAILS  INTEGER
);

CREATE TABLE CINEMA (
  ID       INTEGER      NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NAME     VARCHAR(255) NOT NULL,
  URL      VARCHAR(255),
  TEL      VARCHAR(255),
  EMAIL    VARCHAR(255),
  LOCATION INTEGER
);

CREATE TABLE LOCATION (
  ID      INTEGER      NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NAME    VARCHAR(255),
  CINEMA  INTEGER      NOT NULL,
  CITY    VARCHAR(255) NOT NULL,
  POSTAL  VARCHAR(255) NOT NULL,
  STREET  VARCHAR(255) NOT NULL,
  ADDRESS VARCHAR(255) NOT NULL,
  FOREIGN KEY (CINEMA) REFERENCES CINEMA (ID)
);

# --- !Downs

DROP TABLE SHOW;
DROP TABLE MOVIE;
DROP TABLE CINEMA;
DROP TABLE LOCATION;
