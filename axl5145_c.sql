-- CSE 3330
-- Spring 2017
-- Leal, Armando, axl5145
-- 1000625145
-- Project #1

-- Table structure for table Airport
-- CREATE TABLE IF NOT EXISTS TableName

CREATE TABLE `Airport` (
  `Code` char(3) NOT NULL DEFAULT '',
  `City` varchar(50) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `Flight` (
  `FLNO` INT NOT NULL DEFAULT '0',
  `Meal` varchar(50) DEFAULT NULL,
  `Smoking` char(1) DEFAULT 'N',
  PRIMARY KEY (`FLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `FlightInstance` (
  `FLNO` INT NOT NULL DEFAULT '0',
  `FDate` varchar(10) NOT NULL DEFAULT '00/00/0000',
  PRIMARY KEY (`FLNO`, `FDate`),
  FOREIGN KEY (`FLNO`) REFERENCES Flight (`FLNO`)
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `PlaneType` ( 
  `Maker` VARCHAR(15) NOT NULL DEFAULT "",
  `Model` VARCHAR(15) NOT NULL DEFAULT "",
  `FlyingSpeed` INT NOT NULL DEFAULT 0,
  `GroundSpeed` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`Maker`, `Model`)
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
  
CREATE TABLE `PlaneSeats` (
  `Maker` VARCHAR(15) NOT NULL DEFAULT "",
  `Model` VARCHAR(15) NOT NULL DEFAULT "",
  `SeatType` CHAR(1) NOT NULL DEFAULT "",
  `NoOfSeats` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`Maker`, `Model`, `SeatType`),
  FOREIGN KEY (`Maker`, `Model`) REFERENCES PlaneType (`Maker`, `Model`) 
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Passenger` (
  `ID` INT NOT NULL DEFAULT 0, 
  `Name` VARCHAR(20) NOT NULL DEFAULT "",
  `Phone` CHAR(13) DEFAULT "",
  PRIMARY KEY (`ID`)
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Reservation` (
  `PassID` INT NOT NULL DEFAULT 0,
  `FLNO` INT NOT NULL DEFAULT 0,
  `FDate` CHAR(10) DEFAULT "",
  `FromA` CHAR(3) NOT NULL DEFAULT "",
  `ToA` CHAR(3) NOT NULL DEFAULT "",
  `SeatClass` CHAR(1) NOT NULL DEFAULT "",
  `DateBooked` CHAR(10) DEFAULT "",
  `DateCancelled` CHAR(10) DEFAULT NULL,
  PRIMARY KEY (`PassID`, `FLNO`, `FDate`),
  FOREIGN KEY (`PassID`) REFERENCES Passenger ( `ID`),
  FOREIGN KEY (`FLNO`, `FDate`) REFERENCES FlightInstance (`FLNO`, `FDate`),
  FOREIGN KEY (`FromA`) REFERENCES Airport (`Code`),
  FOREIGN KEY (`ToA`) REFERENCES Airport (`Code`)
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Pilot` (
  `ID` INT NOT NULL DEFAULT 0,
  `Name` VARCHAR(15) NOT NULL DEFAULT '',
  `DateHired` CHAR(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Plane` (
  `ID` INT NOT NULL DEFAULT 0,
  `Maker` VARCHAR(15) NOT NULL DEFAULT '',
  `Model` VARCHAR(15) NOT NULL DEFAULT '',
  `LastMaint` CHAR(10) DEFAULT NULL,
  `LastMaintA` CHAR(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`Maker`, `Model`) REFERENCES PlaneType (`Maker`, `Model`),
  FOREIGN KEY (`LastMaintA`) REFERENCES Airport (`Code`)
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `FlightLeg` (
  `FLNO` INT NOT NULL DEFAULT 0,
  `Seq` INT NOT NULL DEFAULT 0,
  `FromA` CHAR(3) NOT NULL DEFAULT '',
  `ToA` CHAR(3) NOT NULL DEFAULT '',
  `DeptTime` CHAR(16) NOT NULL DEFAULT '',
  `ArrTime` CHAR(16) NOT NULL DEFAULT '',
  `Plane` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`FLNO`, `Seq`),
  FOREIGN KEY (`FLNO`) REFERENCES Flight (`FLNO`),
  FOREIGN KEY (`FromA`) REFERENCES Airport (`Code`),
  FOREIGN KEY (`ToA`) REFERENCES Airport (`Code`),
  FOREIGN KEY (`Plane`) REFERENCES Plane (`ID`)
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `FlightLegInstance` (
  `Seq` INT NOT NULL DEFAULT 0,
  `FLNO` INT NOT NULL DEFAULT 0,
  `FDate` VARCHAR(10) DEFAULT '',
  `ActDept` VARCHAR(20) DEFAULT '',
  `ActArr` VARCHAR(20) DEFAULT '',
  `Pilot` INT DEFAULT 0,
  PRIMARY KEY (`Seq`, `FLNO`, `FDate`),
  FOREIGN KEY (`Seq`, `FLNO`) REFERENCES FlightLeg (`Seq`, `FLNO`),
  FOREIGN KEY (`FLNO`, `FDate`) REFERENCES FlightInstance (`FLNO`, `FDate`),
  FOREIGN KEY (`Pilot` REFERENCES Pilot (`ID`)
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
