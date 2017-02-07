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

LOCK TABLES `PlaneType` WRITE;

INSERT INTO `PlaneType` VALUES('MD', 'MD11', 600, 180),
('MD', 'SUPER80', 500, 170), ('BOEING', '727', 510, 160),
('BOEING', '757', 650, 160), ('AIRBUS', 'A300', 620, 150),
('AIRBUS', 'A320', 700, 180);

UNLOCK TABLES;

LOCK TABLES `PlaneSeats` WRITE;

INSERT INTO `PlaneSeats` VALUES('MD', 'MD11', 'F', 20),
('MD', 'MD11', 'E', 150), ('MD', 'SUPER80', 'F', 10),
('MD', 'SUPER80', 'E', 90), ('BOEING', '727', 'F', 10),
('BOEING', '727', 'E', 110), ('BOEING', '757', 'F', 20),
('BOEING', '757', 'E', 160), ('AIRBUS', 'A300', 'F', 20),
('AIRBUS', 'A300', 'E', 160), ('AIRBUS', 'A320', 'F', 30),
('AIRBUS', 'A320', 'E', 200);

UNLOCK TABLES;

LOCK TABLES `Passenger` WRITE;

INSERT INTO `Passenger` VALUES(1, 'Jones', '(972)999-1111'),
(2, 'James', '(214)111-9999'), (3, 'Henry', '(214)222-1111'),
(4, 'Luis', '(972)111-3333'), (5, 'Howard', '(972)333-1111'),
(6, 'Frank', '(214)111-5555'), (7, 'Frankel', '(972)111-2222'),
(8, 'Bushnell', '(214)111-4444'), (9, 'Camden', '(214)222-5555'),
(10, 'Max', '(214)444-1111'), (11, 'Flores', '(214)333-6666'),
(12, 'Clinton', '(214)222-5555');

UNLOCK TABLES;

LOCK TABLES `Reservation` WRITE;

INSERT INTO `Reservation` VALUES(1, 1000, '10/5/2002', 'DFW', 'LOG', 'E', '9/5/2002',''),
(1, 1020, '10/5/2002', 'LOG', 'JFK', 'E', '9/14/2002',''),
(2, 1020, '10/5/2002', 'LOG', 'INT', 'E', '9/4/2002',''),
(3, 1020, '10/5/2002', 'JFK', 'LAX', 'E', '9/19/2002',''),
(4, 1020, '10/5/2002', 'LOG', 'LAX', 'E', '9/10/2002',''),
(5, 1020, '10/5/2002', 'LOG', 'DFW', 'F', '9/29/2002',''),
(6, 1010, '10/5/2002', 'LAX', 'JFK', 'E', '9/19/2002',''),
(7, 1010, '10/5/2002', 'LAX', 'ORD', 'E', '9/27/2002',''),
(8, 1030, '10/5/2002', 'LAX', 'DFW', 'F', '10/5/2002',''),
(3, 1010, '10/6/2002', 'LAX', 'JFK', 'E', '9/14/2002',''),
(9, 1010, '10/6/2002', 'LAX', 'JFK', 'E', '9/9/2002',''),
(10, 1010, '10/6/2002', 'ORD', 'JFK', 'E', '9/7/2002', '9/19/2002'),
(11, 1000, '10/6/2002', 'DFW', 'LOG', 'E', '9/9/2002',''),
(12, 1000, '10/6/2002', 'DFW', 'LOG', 'E', '9/19/2002',''),
(1, 1010, '10/6/2002', 'ORD', 'JFK', 'E', '9/15/2002',''),
(1, 1040, '10/7/2002', 'LAX', 'LGA', 'E', '10/1/2002','');

UNLOCK TABLES;

LOCK TABLES `Pilot` WRITE;

INSERT INTO `Pilot` VALUES(1, 'Jones', '5/10/1990'),
(2, 'Adams', '6/1/1990'), (3, 'Walker', '7/2/1991'),
(4, 'Flores', '4/1/1992'), (5, 'Thompson', '4/10/1992'),
(6, 'Dean', '9/2/1993'), (7, 'Carter', '8/1/1994'),
(8, 'Mango', '5/2/1995');

UNLOCK TABLES;


LOCK TABLES `Plane` WRITE;

INSERT INTO `Plane` VALUES(1, 'MD', 'MD11', '09/03/2002', 'DFW'),
(2, 'MD', 'MD11', '09/04/2002', 'MDW'), 
(3, 'MD', 'SUPER80', '09/01/2002', 'LAX'),
(4, 'MD', 'SUPER80', '09/03/2002', 'ORD'),
(5, 'MD', 'SUPER80', '09/06/2002', 'LGA'),
(6, 'BOEING', '727', '09/01/2002', 'DFW'),
(7, 'BOEING', '757', '10/02/2002', 'LAX'),
(8, 'AIRBUS', 'A300', '09/01/2002', 'INT'),
(9, 'AIRBUS', 'A320', '09/04/2002', 'LOG');

UNLOCK TABLES;

LOCK TABLES `FlightLeg` WRITE;

INSERT INTO `FlightLeg` VALUES(1000, 1, 'DFW', 'LOG', '1/1/2001 10:20', '1/1/2001 13:40', 7),
(1010, 1, 'LAX', 'ORD', '1/1/2001 13:10', '1/1/2001 16:20', 3),
(1010, 2, 'ORD', 'JFK', '1/1/2001 17:10', '1/1/2001 20:20', 3),
(1020, 1, 'LOG', 'JFK', '1/1/2001 5:40', '1/1/2001 6:20', 9),
(1020, 2, 'JFK', 'DFW', '1/1/2001 7:20', '1/1/2001 10:20', 9),
(1020, 3, 'DFW', 'INT', '1/1/2001 11:10', '1/1/2001 11:40', 7),
(1020, 4, 'INT', 'LAX', '1/1/2001 12:20', '1/1/2001 15:10', 7),
(1030, 1, 'LAX', 'INT', '1/1/2001 11:20', '1/1/2001 16:10', 6),
(1030, 2, 'INT', 'DFW', '1/1/2001 17:20', '1/1/2001 18:00', 6),
(1040, 1, 'LAX', 'LGA', '1/1/2001 15:30', '1/1/2001 21:00', 1);
