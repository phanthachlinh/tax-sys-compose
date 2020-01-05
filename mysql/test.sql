CREATE DATABASE taxDB;
USE taxDB;
CREATE TABLE Users (
  ID int NOT NULL AUTO_INCREMENT,
  username varchar(25)  NOT NULL,
  password  varchar(32) NOT NULL,
  isManager boolean NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Cases (
  ID int NOT NULL AUTO_INCREMENT,
  status smallInt NOT NULL,
  country varchar(2) NOT NULL,
  date_created DateTime NOT NULL,
  FK_User int NOT NULL,
  FK_Mongo_Client varchar(32) NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (FK_User) REFERENCES Users(ID)
);
CREATE TABLE Notes (
  ID int NOT NULL AUTO_INCREMENT,
  messenge varchar(255) NOT NULL,
  FK_User int NOT NULL,
  FK_Case int NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (FK_User) REFERENCES Users(ID),
  FOREIGN KEY (FK_Case) REFERENCES Cases(ID)
);
CREATE TABLE Files(
  ID int NOT NULL AUTO_INCREMENT,
  filename varchar(255) NOT NULL,
  FK_Mongo_Client varchar(32) NOT NULL,
  FK_User int NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (FK_User) REFERENCES Users(ID)

)
