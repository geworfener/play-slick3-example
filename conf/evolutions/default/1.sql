# DC SCHEMA

# --- !Ups

CREATE TABLE MOVIE (
  ID         INTEGER       NOT NULL AUTO_INCREMENT PRIMARY KEY,
  TITLE      VARCHAR2(255) NOT NULL,
  RELEASED   TIMESTAMP,
  RUNTIME    INTEGER,
  GENRE      VARCHAR2(255),
  COUNTRY    VARCHAR2(255),
  DIRECTOR   VARCHAR2(255),
  SYNOPSIS   TEXT,
  POSTER     VARCHAR2(255),
  IMDBID     VARCHAR2(255),
  IMDBRATING DECIMAL,
  TOMATOESID VARCHAR2(255),
  DETAILS    INTEGER
);

CREATE TABLE CINEMA (
  ID       INTEGER       NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NAME     VARCHAR2(255) NOT NULL,
  URL      VARCHAR2(255),
  TEL      VARCHAR2(255),
  EMAIL    VARCHAR2(255),
  LOCATION INTEGER
);

CREATE TABLE LOCATION (
  ID      INTEGER       NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NAME    VARCHAR2(255) NOT NULL,
  CINEMA  INTEGER       NOT NULL,
  CITY    VARCHAR2(255) NOT NULL,
  POSTAL  VARCHAR2(255) NOT NULL,
  STREET  VARCHAR2(255) NOT NULL,
  ADDRESS VARCHAR2(255) NOT NULL,
  FOREIGN KEY (CINEMA) REFERENCES CINEMA (ID)
);

CREATE TABLE SHOWING (
  ID       INTEGER   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  MOVIE    INTEGER   NOT NULL,
  LOCATION INTEGER   NOT NULL,
  START    TIMESTAMP NOT NULL,
  END      TIMESTAMP,
  FOREIGN KEY (MOVIE) REFERENCES MOVIE (ID),
  FOREIGN KEY (LOCATION) REFERENCES LOCATION (ID)
);

# --- !Downs

DROP TABLE SHOWING;
DROP TABLE LOCATION;
DROP TABLE CINEMA;
DROP TABLE MOVIE;