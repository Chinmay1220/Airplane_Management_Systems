--Create Database Airline_Management_System
CREATE DATABASE Airline_Management_System
USE Airline_Management_System

--Create table for Airport
CREATE TABLE Airport (
    AirportID INT PRIMARY KEY IDENTITY(1,1),
    AirportName VARCHAR(100),
    AirportLocation VARCHAR(100)
);

--Create table for Airline
create TABLE Airline (
    AirlineID INT PRIMARY KEY IDENTITY(10,3),
    AirportID INT,
    AirlineName VARCHAR(100),
    AirlineService VARCHAR(100),
    CONSTRAINT Airline_Airport_FK FOREIGN KEY (AirportID) REFERENCES Airport(AirportID)
);

--Create table for flght
CREATE TABLE Flight (
    FlightID INT PRIMARY KEY IDENTITY(108,4),
	AirportID INT,
    AirlineID INT,
    CrewID INT NOT NULL,
    DepartureAirportID INT,
    ArrivalAirportID INT,
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    FlightStatus VARCHAR(50),
    CONSTRAINT Airline_FK FOREIGN KEY (AirlineID) REFERENCES Airline(AirlineID),
	CONSTRAINT Arrival_airport_ID FOREIGN KEY (AirportID) REFERENCES Airport(AirportID),
	CONSTRAINT Depart_airport_ID FOREIGN KEY (AirportID) REFERENCES Airport(AirportID),

	);
	
--Create table for CrewMember
	CREATE TABLE CrewMember (
    CrewID INT PRIMARY KEY IDENTITY(162,6),
    FlightID INT,
    AirlineID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ContactInfo VARCHAR(100),
    CrewPosition VARCHAR(50),
    CONSTRAINT Crew_Flight_FK FOREIGN KEY (FlightID) REFERENCES Flight(FlightID),
    CONSTRAINT Crew_Airline_FK FOREIGN KEY (AirlineID) REFERENCES Airline(AirlineID)
);
--Alter table flight to add crewid constraint
alter table flight 
ADD CONSTRAINT Crew_FK FOREIGN KEY (CrewID) REFERENCES CrewMember(CrewID)


--Create table for FlightCrew
	CREATE TABLE FlightCrew (
	FlightCrewID INT PRIMARY KEY IDENTITY(1,1),
    CrewID INT,
    FlightID INT,
    CONSTRAINT Flightid_FK FOREIGN KEY (FlightID) REFERENCES Flight(FlightID),
    CONSTRAINT Crewid_FK FOREIGN KEY (CrewID) REFERENCES CrewMember(CrewID)
);


--Create table for Passenger	
CREATE TABLE Passenger (
    PassengerID INT PRIMARY KEY IDENTITY(1200,7),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ContactInfo VARCHAR(100),
	SSN INT
);

--create table for Reservation
CREATE TABLE Reservation (
    ReservationID INT PRIMARY KEY IDENTITY(1999,3),
    ReservationStatus VARCHAR(50),
   );


 --create table for Ticket
CREATE TABLE Ticket (
    TicketID INT PRIMARY KEY IDENTITY(14589,5),
    PassengerID INT,
    TicketNumber VARCHAR(50),
    TicketStatus VARCHAR(50),
    CONSTRAINT Ticket_Passenger_FK FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID)
);

--create table for SafetyAssessment
CREATE TABLE SafetyAssessment (
    SafetyID INT PRIMARY KEY IDENTITY(15,1),
    FlightID INT,
    SafetyDate DATE,
    SafetyDetails TEXT,
    CONSTRAINT SafetyAssessment_Flight_FK FOREIGN KEY (FlightID) REFERENCES Flight(FlightID)
);


 --create table for FlightPerformance
CREATE TABLE FlightPerformance (
    PerformanceID INT PRIMARY KEY IDENTITY(50,4),
    FlightID INT,
    FuelConsumption DECIMAL(10,2),
    DateOfPerformance DATE,
    CONSTRAINT FlightPerformance_Flight_FK FOREIGN KEY (FlightID) REFERENCES Flight(FlightID)
);

 --create table for Maintenance
CREATE TABLE Maintenance (
    MaintenanceID INT PRIMARY KEY IDENTITY(30,2),
    FlightID INT,
    MaintenanceDate DATE,
    MaintenanceDesc TEXT,
    CONSTRAINT Maintenance_Flight_FK FOREIGN KEY (FlightID) REFERENCES Flight(FlightID)
);


--create table for PassengerFlight
 CREATE TABLE PassengerFlight (
    BookingID INT PRIMARY KEY IDENTITY(777665,99),
    PassengerID INT,
    ReservationID INT,
    SeatNumber VARCHAR(20), -- Adjust the length based on your requirements
   CONSTRAINT Passenger_Flight_pass FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID),
   CONSTRAINT Resever_Flight_pass FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID)
);

 --create table for FlightReservation
CREATE TABLE FlightReservation (
    FlightReservationID INT PRIMARY KEY IDENTITY(700,98),
    FlightID INT,
    ReservationID INT,
    BoardingTime DATETIME, -- Adjust the data type based on your requirements
   CONSTRAINT Flight_reserve_key FOREIGN KEY (FlightID) REFERENCES Flight(FlightID),
   CONSTRAINT reserve_key FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID)
);


--create table for Baggage
CREATE TABLE Baggage (
    BaggageID INT PRIMARY KEY IDENTITY(606,67),
    PassengerID INT,
    FlightID INT,
    BaggageWeight DECIMAL(10,2), 
    BaggageStatus VARCHAR(50),  
    CONSTRAINT Baggage_Passenger_FK FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID),
    CONSTRAINT Baggage_Flight_FK FOREIGN KEY (FlightID) REFERENCES Flight(FlightID)
);