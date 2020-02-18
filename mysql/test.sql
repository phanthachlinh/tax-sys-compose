CREATE DATABASE taxDB;

CREATE TABLE `taxDB`.`Users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(25)  NOT NULL,
  `password`  varchar(32) NOT NULL,
  `isManager` boolean NOT NULL,
  PRIMARY KEY (ID)
);
CREATE TABLE `taxDB`.`Notes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `messenge` varchar(255) NOT NULL,
  `date_created` TIMESTAMP NOT NULL,
  `FK_User` int NOT NULL,
  `FK_Mongo_Case` varchar(32) NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (FK_User) REFERENCES Users(ID) ON DELETE CASCADE
);
CREATE TABLE `taxDB`.`Files`(
  `ID` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `date_created` TIMESTAMP NOT NULL,
  `filename` varchar(255) NOT NULL,
  `FK_Mongo_Case` varchar(32) NOT NULL,
  `FK_User` int NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (FK_User) REFERENCES Users(ID) ON DELETE CASCADE
);
INSERT INTO `taxDB`.`Users` (`username`,`password`,`isManager`)
VALUES ('jon','doe',TRUE);
