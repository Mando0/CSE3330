-- CSE 3330
-- Spring 2017
-- Leal, Armando, axl5145
-- 1000625145
-- Project #1

-- Table structure for table Airport


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
  
