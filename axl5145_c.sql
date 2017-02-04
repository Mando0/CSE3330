-- CSE 3330
-- Spring 2017
-- Leal, Armando, axl5145
-- 1000625145
-- Project #1

-- Table structure for table Airport

DROP TABLE IF EXISTS `Airport`;

CREATE TABLE `Airport` (
  `Code` char(3) NOT NULL DEFAULT '',
  `City` varchar(50) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `Airport`

LOCK TABLES `Airport` WRITE;

INSERT INTO `Airport` VALUES('DFW','Dallas','TX'),
('LOG','BOSTON','MA'), ('ORD','Chicago','IL'),
('MDW','Chicago','IL'), ('JFK','New York','NY'),
('LGA','New York','NY'), ('INT','Houston','TX'),
('LAX','Los Angeles','CA');

UNLOCK TABLES;

DROP TABLE IF EXISTS `Flight`;

CREATE TABLE `Flight` (
  `FLNO` INT NOT NULL DEFAULT '',
  `Meal` varchar(50) DEFAULT NULL,
  `Smoking` char(1) DEFAULT 'N',
  PRIMARY KEY (`FLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
