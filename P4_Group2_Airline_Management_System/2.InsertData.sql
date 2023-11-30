--Insert statements for Airport
INSERT INTO Airport (AirportName, AirportLocation)
VALUES
('Las Vegas International Airport', 'Las Vegas'),
('CSMT International Airport', 'Mumbai'),
('Zurich International Airport', 'Zurich'),
('San Fransico International Airport', 'San Fransico'),
('Tokyo Haneda Airport', 'Tokyo'),
('Sydney Kingsford Smith Airport', 'Sydney'),
('Dubai International Airport', 'Dubai'),
('Frankfurt Airport', 'Frankfurt'),
('Beijing Capital International Airport', 'Beijing'),
('Singapore Changi Airport', 'Singapore'),
('Denver International Airport', 'Denver'),
('Incheon International Airport', 'Seoul'),
('O Hare International Airport', 'Chicago'),
('Hong Kong International Airport', 'Hong Kong'),
('Amsterdam Schiphol Airport', 'Amsterdam'),
('Dallas/Fort Worth International Airport', 'Dallas'),
('Barcelona�El Prat Airport', 'Barcelona'),
('Toronto Pearson International Airport', 'Toronto'),
('Munich Airport', 'Munich'),
('Istanbul Airport', 'Istanbul');

--Insert statements for Airline
INSERT INTO Airline (AirportID, AirlineName, AirlineService)
VALUES
(1, 'Delta Airlines', 'Full Service'),
(2, 'British Airways', 'Full Service'),
(3, 'Air France', 'Full Service'),
(4, 'American Airlines', 'Global Service'),
(5, 'All Nippon Airways', 'Full Service'),
(6, 'Qantas Airways', 'Global Service'),
(7, 'Emirates', 'Full Service'),
(8, 'Lufthansa', 'Full Service'),
(9, 'Air China', 'Full Service'),
(10, 'Singapore Airlines', 'Global Service'),
(11, 'United Airlines', 'Global Service'),
(12, 'Korean Air', 'Full Service'),
(13, 'Cathay Pacific', 'Full Service'),
(14, 'Qatar Airways', 'Full Service'),
(15, 'KLM Royal Dutch Airlines', 'Full Service'),
(16, 'American Eagle', 'Regional'),
(17, 'Iberia Airlines', 'Global Service'),
(18, 'Air Canada', 'Full Service'),
(19, 'Lufthansa Cargo', 'Cargo'),
(20, 'Turkish Airlines', 'Full Service');

--Insert statements for CrewMember
INSERT INTO CrewMember (FlightID, AirlineID, FirstName, LastName, ContactInfo, CrewPosition)
VALUES
(NULL, 10, 'John', 'Cena', 'john.cena@northeastern.edu', 'Pilot'),
(NULL, 13, 'Jane', 'Smith', 'jane.smith@northeastern.edu', 'Co-Pilot'),
(NULL, 16, 'Alice', 'Johnson', 'alice.johnson@northeastern.edu', 'Flight Attendant'),
(NULL, 19, 'Bob', 'Williams', 'bob.williams@northeastern.edu', 'Flight Attendant'),
(NULL, 22, 'Charlie', 'Brown', 'charlie.brown@northeastern.edu', 'Engineer'),
(NULL, 25, 'Eva', 'Miller', 'eva.miller@northeastern.edu', 'Cabin Crew'),
(NULL, 28, 'David', 'Davis', 'david.davis@northeastern.edu', 'Cabin Crew'),
(NULL, 31, 'Olivia', 'Taylor', 'olivia.taylor@northeastern.edu', 'Navigator'),
(NULL, 34, 'William', 'Anderson', 'william.anderson@northeastern.edu', 'Co-Pilot'),
(NULL, 37, 'Sophia', 'Martin', 'sophia.martin@northeastern.edu', 'Pilot'),
(NULL, 40, 'Jack', 'Jones', 'jack.jones@northeastern.edu', 'Co-Pilot'),
(NULL, 43, 'Emma', 'White', 'emma.white@northeastern.edu', 'Flight Attendant'),
(NULL, 46, 'Andrew', 'Johnson', 'andrew.johnson@northeastern.edu', 'Cabin Crew'),
(NULL, 49, 'Grace', 'Wilson', 'grace.wilson@northeastern.edu', 'Pilot'),
(NULL, 52, 'Daniel', 'Moore', 'daniel.moore@northeastern.edu', 'Co-Pilot'),
(NULL, 55, 'Ava', 'Clark', 'ava.clark@northeastern.edu', 'Flight Attendant'),
(NULL, 58, 'Henry', 'Hall', 'henry.hall@northeastern.edu', 'Engineer'),
(NULL, 61, 'Lily', 'Baker', 'lily.baker@northeastern.edu', 'Cabin Crew'),
(NULL, 64, 'Mia', 'King', 'mia.king@northeastern.edu', 'Cabin Crew'),
(NULL, 67, 'James', 'Young', 'james.young@northeastern.edu', 'Navigator')


--Insert statements for Flight
INSERT INTO Flight (AirportID, AirlineID, CrewID, DepartureAirportID, ArrivalAirportID, DepartureTime, ArrivalTime, FlightStatus)
VALUES
(1, 10, 162, 1, 2, '2023-11-01 08:00:00', '2023-11-01 12:00:00', 'Scheduled'),
(2, 13, 168, 2, 3, '2023-12-02 09:00:00', '2023-12-03 13:00:00', 'On Time'),
(3, 16, 174, 3, 4, '2023-11-03 10:00:00', '2023-11-03 14:00:00', 'Delayed'),
(4, 19, 180, 4, 5, '2023-10-04 11:00:00', '2023-10-04 15:00:00', 'Canceled'),
(5, 22, 186, 5, 6, '2023-10-05 12:00:00', '2023-10-05 16:00:00', 'On Time'),
(6, 25, 192, 6, 7, '2023-07-06 13:00:00', '2023-07-07 17:00:00', 'Scheduled'),
(7, 28, 198, 7, 8, '2023-06-07 14:00:00', '2023-06-07 18:00:00', 'On Time'),
(8, 31, 204, 8, 9, '2023-09-08 15:00:00', '2023-09-08 19:00:00', 'Delayed'),
(9, 34, 210, 9, 10, '2023-11-09 16:00:00', '2023-11-09 20:00:00', 'On Time'),
(10, 37, 216, 10, 1, '2023-11-10 17:00:00', '2023-11-11 21:00:00', 'Scheduled'),
(11, 40, 222, 1, 3, '2023-10-11 18:00:00', '2023-10-11 22:00:00', 'On Time'),
(12, 43, 228, 2, 4, '2023-10-12 19:00:00', '2023-10-12 23:00:00', 'Delayed'),
(13, 46, 234, 3, 5, '2023-10-13 20:00:00', '2023-10-13 00:00:00', 'Canceled'),
(14, 49, 240, 4, 6, '2023-11-14 21:00:00', '2023-11-14 01:00:00', 'On Time'),
(15, 52, 246, 5, 7, '2023-11-15 22:00:00', '2023-11-15 02:00:00', 'Scheduled'),
(16, 55, 252, 6, 8, '2023-12-16 23:00:00', '2023-12-16 03:00:00', 'On Time'),
(17, 58, 258, 7, 9, '2023-11-17 00:00:00', '2023-11-17 04:00:00', 'Delayed'),
(18, 61, 264, 8, 10, '2023-11-18 01:00:00', '2023-11-18 05:00:00', 'On Time'),
(19, 64, 270, 9, 1, '2023-11-19 02:00:00', '2023-11-19 06:00:00', 'Scheduled'),
(20, 67, 276, 10, 2, '2023-11-20 03:00:00', '2023-11-20 07:00:00', 'On Time');


--Insert statements for FlightCrew
INSERT INTO FlightCrew (CrewID, FlightID)
VALUES
(162, 108),
(168, 112),
(174, 116),
(180, 120),
(186, 124),
(192, 128),
(198, 132),
(204, 136),
(210, 140),
(216, 144),
(222, 148),
(228, 152),
(234, 156),
(240, 160),
(246, 164),
(252, 168),
(258, 172),
(264, 176),
(270, 180),
(276, 184);


--Insert statements for Passenger
INSERT INTO Passenger (FirstName, LastName, ContactInfo, SSN)
VALUES
('Emily', 'Johnson', 'emily.johnson@gmail.com', 123456789),
('Daniel', 'Miller', 'daniel.miller@gmail.com', 987654321),
('Sophia', 'Davis', 'sophia.davis@gmail.com', 456789123),
('Carter', 'Williams', 'carter.williams@gmail.com', 789123456),
('Lily', 'Brown', 'lily.brown@gmail.com', 654321987),
('Gabriel', 'Anderson', 'gabriel.anderson@gmail.com', 321987654),
('Grace', 'Taylor', 'grace.taylor@gmail.com', 147258369),
('Owen', 'Smith', 'owen.smith@gmail.com', 369147258),
('Isaac', 'Jones', 'isaac.jones@gmail.com', 258369147),
('Zoe', 'Martin', 'zoe.martin@gmail.com', 963852741),
('Aiden', 'Robinson', 'aiden.robinson@gmail.com', 852741963),
('Ella', 'Wright', 'ella.wright@gmail.com', 741852963),
('Nathan', 'Davis', 'nathan.davis@gmail.com', 369258147),
('Aria', 'Brown', 'aria.brown@gmail.com', 951753468),
('Henry', 'Miller', 'henry.miller@gmail.com', 147963852),
('Ava', 'Thomas', 'ava.thomas@gmail.com', 258147963),
('Oliver', 'Taylor', 'oliver.taylor@gmail.com', 123789456),
('Scarlett', 'Williams', 'scarlett.williams@gmail.com', 456123789),
('Mason', 'Martin', 'mason.martin@gmail.com', 789456123),
('Eva', 'White', 'eva.white@gmail.com', 159753468);

--Insert statements for Reservation
INSERT INTO Reservation (ReservationStatus) VALUES 
  ('Confirmed'),
  ('Pending'),
  ('Cancelled'),
  ('Confirmed'),
  ('Pending'),
  ('Cancelled'),
  ('Confirmed'),
  ('Pending'),
  ('Cancelled'),
  ('Confirmed'),
  ('Pending'),
  ('Cancelled'),
  ('Confirmed'),
  ('Pending'),
  ('Cancelled'),
  ('Confirmed'),
  ('Pending'),
  ('Cancelled'),
  ('Confirmed'),
  ('Pending');


--Insert statements for SafetyAssessment
INSERT INTO SafetyAssessment (FlightID, SafetyDate, SafetyDetails)
VALUES
(108, '2023-10-01', 'Routine safety check conducted. No abnormalities detected.'),
(112, '2023-10-02', 'Pre-flight safety assessment completed. All safety protocols in place.'),
(116, '2023-10-03', 'Comprehensive safety inspection carried out. No issues reported.'),
(120, '2023-10-04', 'Safety drill executed successfully. Crew well-versed in emergency procedures.'),
(124, '2023-11-05', 'Regular safety briefing held. Passengers informed of safety measures.'),
(128, '2023-11-06', 'Emergency response simulation completed. Swift and efficient coordination observed.'),
(132, '2023-11-07', 'Flight systems safety check completed. All systems functioning within parameters.'),
(136, '2023-11-08', 'Safety meeting conducted. Crew members reminded of safety priorities.'),
(140, '2023-11-09', 'Safety equipment inspection carried out. Equipment in good condition.'),
(144, '2023-11-10', 'Security protocols reviewed. No security concerns identified.'),
(148, '2023-12-11', 'Safety awareness training conducted for crew. Crew members updated on safety best practices.'),
(152, '2023-12-12', 'Emergency evacuation drill performed. Evacuation procedures followed accurately.'),
(156, '2023-12-13', 'Safety documentation audit completed. All records up-to-date.'),
(160, '2023-12-14', 'Routine safety walk-through executed. No safety hazards observed.'),
(164, '2023-12-15', 'Pre-flight safety briefing conducted. Passengers informed of emergency exits and procedures.'),
(168, '2023-11-16', 'Emergency response coordination drill completed. Crew demonstrated effective communication.'),
(172, '2023-11-17', 'Safety checklist review conducted. All items checked and verified.'),
(176, '2023-11-18', 'Regular safety training session held. Crew members refreshed on safety protocols.'),
(180, '2023-11-19', 'Safety awareness campaign among passengers. Passengers encouraged to report any safety concerns.'),
(184, '2023-10-20', 'Post-flight safety debriefing conducted. Crew discussed any safety issues encountered during the flight.');


--Insert statements for Baggage
INSERT INTO Baggage (PassengerID, FlightID, BaggageWeight, BaggageStatus)
VALUES 
  (1200, 108, 23.5, 'Checked'),
  (1207, 112, 18.0, 'Checked'),
  (1214, 116, 15.2, 'Carry-on'),
  (1221, 120, 30.8, 'Checked'),
  (1228, 124, 10.5, 'Carry-on'),
  (1235, 128, 28.0, 'Checked'),
  (1242, 132, 12.3, 'Carry-on'),
  (1249, 136, 22.7, 'Checked'),
  (1256, 140, 17.5, 'Carry-on'),
  (1263, 144, 25.0, 'Checked'),
  (1270, 148, 14.1, 'Carry-on'),
  (1277, 152, 19.8, 'Checked'),
  (1284, 156, 11.4, 'Carry-on'),
  (1291, 160, 27.3, 'Checked'),
  (1298, 164, 9.2, 'Carry-on'),
  (1305, 168, 20.6, 'Checked'),
  (1312, 172, 13.7, 'Carry-on'),
  (1319, 176, 16.9, 'Checked'),
  (1326, 180, 8.5, 'Carry-on'),
  (1333, 184, 21.4, 'Checked');


--Insert statements for FlightPerformance
INSERT INTO FlightPerformance (FlightID, FuelConsumption, DateOfPerformance)
VALUES
(108, 1200.45, '2023-10-01'),
(112, 1100.32, '2023-10-02'),
(116, 1300.78, '2023-10-03'),
(120, 1250.60, '2023-10-04'),
(124, 1180.95, '2023-11-05'),
(128, 1350.20, '2023-11-06'),
(132, 1225.75, '2023-11-07'),
(136, 1275.40, '2023-11-08'),
(140, 1150.88, '2023-11-09'),
(144, 1400.15, '2023-12-10'),
(148, 1125.50, '2023-12-11'),
(152, 1375.25, '2023-12-12'),
(156, 1288.75, '2023-12-13'),
(160, 1236.20, '2023-12-14'),
(164, 1325.60, '2023-12-15'),
(168, 1260.40, '2023-12-16'),
(172, 1195.15, '2023-11-17'),
(176, 1340.90, '2023-11-18'),
(180, 1148.30, '2023-11-19'),
(184, 1305.75, '2023-10-20');


--Insert statements for Maintenance
INSERT INTO Maintenance (FlightID, MaintenanceDate, MaintenanceDesc)
VALUES
  (108, '2023-10-23', 'Routine check'),
  (112, '2022-10-25', 'Engine inspection'),
  (116, '2023-09-12', 'Avionics update'),
  (120, '2022-09-21', 'Interior cleaning'),
  (124, '2022-11-14', 'Landing gear maintenance'),
  (128, '2022-11-11', 'Fuel system check'),
  (132, '2022-08-10', 'Windshield replacement'),
  (136, '2023-07-05', 'Navigation system calibration'),
  (140, '2023-01-09', 'Hydraulic system inspection'),
  (144, '2023-01-10', 'Emergency equipment test'),
  (148, '2022-01-11', 'Aircraft software update'),
  (152, '2023-06-06', 'Exterior paint touch-up'),
  (156, '2022-01-13', 'Cabin pressurization test'),
  (160, '2023-07-02', 'Tire replacement'),
  (164, '2023-01-15', 'Aileron adjustment'),
  (168, '2023-09-19', 'Brake system check'),
  (172, '2022-01-17', 'Communication system test'),
  (176, '2022-02-04', 'Oxygen system inspection'),
  (180, '2023-08-19', 'Propeller maintenance'),
  (184, '2022-04-12', 'Anti-icing system check');


--Insert statements for FlightPerformance
  INSERT INTO FlightPerformance (FlightID, FuelConsumption, DateOfPerformance)
VALUES
(108, 1200.45, '2023-09-01'),
(112, 1100.32, '2022-11-12'),
(116, 1300.78, '2022-03-03'),
(120, 1250.60, '2022-11-14'),
(124, 1180.95, '2023-08-05'),
(128, 1350.20, '2023-11-06'),
(132, 1225.75, '2022-04-21'),
(136, 1275.40, '2022-11-08'),
(140, 1150.88, '2022-01-09'),
(144, 1400.15, '2023-12-10'),
(148, 1125.50, '2023-11-29'),
(152, 1375.25, '2023-03-12'),
(156, 1288.75, '2022-11-13'),
(160, 1236.20, '2022-11-14'),
(164, 1325.60, '2022-02-02'),
(168, 1260.40, '2023-11-16'),
(172, 1195.15, '2023-11-17'),
(176, 1340.90, '2022-09-04'),
(180, 1148.30, '2022-11-22'),
(184, 1305.75, '2022-10-09');


UPDATE CrewMember SET FlightID = 108 WHERE CrewID = 162;
UPDATE CrewMember SET FlightID = 112 WHERE CrewID = 168;
UPDATE CrewMember SET FlightID = 116 WHERE CrewID = 174;
UPDATE CrewMember SET FlightID = 120 WHERE CrewID = 180;
UPDATE CrewMember SET FlightID = 124 WHERE CrewID = 186;
UPDATE CrewMember SET FlightID = 128 WHERE CrewID = 192;
UPDATE CrewMember SET FlightID = 132 WHERE CrewID = 198;
UPDATE CrewMember SET FlightID = 136 WHERE CrewID = 204;
UPDATE CrewMember SET FlightID = 140 WHERE CrewID = 210;
UPDATE CrewMember SET FlightID = 144 WHERE CrewID = 216;
UPDATE CrewMember SET FlightID = 148 WHERE CrewID = 222;
UPDATE CrewMember SET FlightID = 152 WHERE CrewID = 228;
UPDATE CrewMember SET FlightID = 156 WHERE CrewID = 234;
UPDATE CrewMember SET FlightID = 160 WHERE CrewID = 240;
UPDATE CrewMember SET FlightID = 164 WHERE CrewID = 246;
UPDATE CrewMember SET FlightID = 168 WHERE CrewID = 252;
UPDATE CrewMember SET FlightID = 172 WHERE CrewID = 258;
UPDATE CrewMember SET FlightID = 176 WHERE CrewID = 264;
UPDATE CrewMember SET FlightID = 180 WHERE CrewID = 270;
UPDATE CrewMember SET FlightID = 184 WHERE CrewID = 276;

--Insert statements for FlightReservation
INSERT INTO FlightReservation (FlightID, ReservationID, BoardingTime)
VALUES
(108, 1999, '2023-01-01 08:30:00'),
(112, 2002, '2022-09-02 09:15:00'),
(116, 2005, '2021-10-03 10:45:00'),
(120, 2008, '2022-03-04 11:30:00'),
(124, 2011, '2022-09-05 12:45:00'),
(128, 2014, '2023-11-06 13:20:00'),
(132, 2017, '2023-05-07 14:00:00'),
(136, 2020, '2022-11-08 15:30:00'),
(140, 2023, '2023-12-09 16:15:00'),
(144, 2026, '2021-10-10 17:45:00'),
(148, 2029, '2022-12-11 18:30:00'),
(152, 2032, '2022-03-12 19:10:00'),
(156, 2035, '2021-12-13 20:45:00'),
(160, 2038, '2022-08-14 21:30:00'),
(164, 2041, '2023-11-15 22:00:00'),
(168, 2044, '2021-07-16 23:15:00'),
(172, 2047, '2021-11-17 00:00:00'),
(176, 2050, '2022-10-18 01:30:00'),
(180, 2053, '2022-06-19 02:15:00'),
(184, 2056, '2023-08-20 03:45:00');

--Insert statements for Ticket
INSERT INTO Ticket (PassengerID, TicketNumber, TicketStatus) VALUES 
  (1200, 'T14589', 'Confirmed'),
  (1207, 'T14594', 'Pending'),
  (1214, 'T14599', 'Confirmed'),
  (1221, 'T14604', 'Cancelled'),
  (1228, 'T14609', 'Confirmed'),
  (1235, 'T14614', 'Pending'),
  (1242, 'T14619', 'Cancelled'),
  (1249, 'T14624', 'Confirmed'),
  (1256, 'T14629', 'Pending'),
  (1263, 'T14634', 'Cancelled'),
  (1270, 'T14639', 'Confirmed'),
  (1277, 'T14644', 'Pending'),
  (1284, 'T14649', 'Cancelled'),
  (1291, 'T14654', 'Confirmed'),
  (1298, 'T14659', 'Pending'),
  (1305, 'T14664', 'Cancelled'),
  (1312, 'T14669', 'Confirmed'),
  (1319, 'T14674', 'Pending'),
  (1326, 'T14679', 'Cancelled'),
  (1333, 'T14684', 'Confirmed');


--Insert statements for PassengerFlight
  INSERT INTO PassengerFlight (PassengerID, ReservationID, SeatNumber)
VALUES
(1200, 1999, 'A1'),
(1207, 2002, 'B2'),
(1214, 2005, 'C3'),
(1221, 2008, 'D4'),
(1228, 2011, 'E5'),
(1235, 2014, 'F6'),
(1242, 2017, 'G7'),
(1249, 2020, 'H8'),
(1256, 2023, 'I9'),
(1263, 2026, 'J10'),
(1270, 2029, 'K11'),
(1277, 2032, 'L12'),
(1284, 2035, 'M13'),
(1291, 2038, 'N14'),
(1298, 2041, 'O15'),
(1305, 2044, 'P16'),
(1312, 2047, 'Q17'),
(1319, 2050, 'R18'),
(1326, 2053, 'S19'),
(1333, 2056, 'T20');
