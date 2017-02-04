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

