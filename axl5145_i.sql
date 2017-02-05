-- CSE 3330
-- Spring 2017
-- Leal, Armando, axl5145
-- 1000625145
-- Project #1

-- Inserting data into tables

-- Dumping data for table `Airport`

LOCK TABLES `Airport` WRITE;

INSERT INTO `Airport` VALUES('DFW','Dallas','TX'),
('LOG','BOSTON','MA'), ('ORD','Chicago','IL'),
('MDW','Chicago','IL'), ('JFK','New York','NY'),
('LGA','New York','NY'), ('INT','Houston','TX'),
('LAX','Los Angeles','CA');

UNLOCK TABLES;

LOCK TABLES `Flight` WRITE;

INSERT INTO `Flight` VALUES(1000,'Bistro','Y'),
(1010,'Meal','N'), (1020,'Meal','Y'),
(1030,'Snack','N'), (1040,'Meal','N');

UNLOCK TABLES;


LOCK TABLES `FlightInstance` WRITE;

INSERT INTO `FlightInstance` VALUES(1000,'10/5/2002'),
(1000,'10/6/2002'), (1000,'10/7/2002'), (1010,'10/5/2002'),
(1010,'10/6/2002'), (1020,'10/5/2002'), (1030,'10/5/2002'),
(1040,'10/7/2002');

UNLOCK TABLES;
