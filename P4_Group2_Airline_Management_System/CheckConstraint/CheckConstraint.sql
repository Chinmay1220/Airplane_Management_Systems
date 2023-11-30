--CHECK CONSTRAINTS :
/*Ticket*/
 
ALTER TABLE Ticket
ADD CONSTRAINT TicketStatus
CHECK (TicketStatus IN ('Confirmed', 'Pending','Cancelled'));
 
INSERT INTO Ticket (TicketNumber, TicketStatus) VALUES ('T15589', 'Pending');
 
DELETE from Ticket
where TicketNumber='T15589';
 
INSERT INTO Ticket (TicketNumber, TicketStatus) VALUES ('T15589', 'Pending');

select * from Ticket;
 

--CHECK CONSTRAINTS :
/*Passenger*/
ALTER TABLE Passenger
ADD CONSTRAINT CHK_ValidSSN
CHECK (LEN(SSN) = 9 AND ISNUMERIC(SSN) = 1);
 
INSERT INTO Passenger (FirstName, LastName, ContactInfo,SSN)
VALUES
('Emily', 'Johnson', 'emily.johnson@gmail.com',1234567808);
 
select * from Passenger;
 

 --CHECK CONSTRAINTS :
/*FlightPerformance*/
ALTER TABLE FlightPerformance
ADD CONSTRAINT CHK_FuelConsumption CHECK (FuelConsumption > 50.5);
 
INSERT INTO FlightPerformance (PerformanceID, FlightID, FuelConsumption, DateOfPerformance) Values (88, 7001, 40.0, '2023-01-07');
INSERT INTO FlightPerformance (PerformanceID, FlightID, FuelConsumption, DateOfPerformance) Values (50, 108, 40.0, '2023-01-07');
 
select * from FlightPerformance;