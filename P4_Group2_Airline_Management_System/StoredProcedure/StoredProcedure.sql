--1
-- Create Stored Procedure to get passengers details whos's ticket status is cancelled
CREATE PROCEDURE GetCancelledPassengerDetails
AS
BEGIN
    SELECT
        P.FirstName,
        P.LastName,
        P.ContactInfo,
        T.TicketNumber,
        T.TicketStatus,
        P.SSN
    FROM
        Ticket T
    JOIN
        Passenger P ON T.PassengerID = P.PassengerID
    WHERE
        T.TicketStatus = 'cancelled';
END;

--Execute GetCancelledPassengerDetails Store Procedure
EXEC GetCancelledPassengerDetails;


--2
--Create Stored Procedure to get safetey details and crew details based on Airline name
CREATE PROCEDURE GetSafetyDetailsByAirline
    @AirlineName VARCHAR(100)
AS
BEGIN
    SELECT
        CM.FlightID,
        CM.FirstName AS 'CrewFirstName',
        CM.LastName AS 'CrewLastName',
        CM.CrewPosition,
        SA.SafetyDate,
        SA.SafetyDetails
    FROM
        Airline A
    JOIN
        CrewMember CM ON A.AirlineID = CM.AirlineID
    LEFT JOIN
        SafetyAssessment SA ON CM.FlightID = SA.FlightID
    WHERE
        A.AirlineName = @AirlineName;
END;

--Execute GetSafetyDetailsByAirline
EXEC GetSafetyDetailsByAirline 'British Airways';



--3
--Create Stored Procedure to get Passenger details based on weight condition
CREATE PROCEDURE GetPassengersByBaggageWeight
    @MaxBaggageWeight DECIMAL(10, 2)
AS
BEGIN
    SELECT
        p.FirstName,
        p.LastName,
        p.ContactInfo
    FROM
        Passenger p
    INNER JOIN
        Baggage b ON p.PassengerID = b.PassengerID
    WHERE
        b.BaggageWeight < @MaxBaggageWeight;
END;


--Execute GetPassengersByBaggageWeight
EXEC GetPassengersByBaggageWeight @MaxBaggageWeight = 20.0;


--4
--Create Passenger details of their ticket and baggage based on their name
CREATE PROCEDURE GetPassengerDetailsWithTicketAndBaggage
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50)
AS
BEGIN
    SELECT
        t.TicketNumber,
        t.TicketStatus,
        b.BaggageWeight,
        b.BaggageStatus
    FROM
        Passenger p
    LEFT JOIN
        Ticket t ON p.PassengerID = t.PassengerID
    LEFT JOIN
        Baggage b ON p.PassengerID = b.PassengerID
    WHERE
        p.FirstName = @FirstName
        AND p.LastName = @LastName;
END;

-- Execute GetPassengerDetailsWithTicketAndBaggage
EXEC GetPassengerDetailsWithTicketAndBaggage @FirstName = 'Emily', @LastName = 'Johnson';


--5
--Create Store Procedure Airport details based on Airline name
CREATE PROCEDURE GetAirportInfoByAirline
    @AirlineName NVARCHAR(100)
AS
BEGIN
    SELECT
        a.AirportID,
        a.AirportName,
        a.AirportLocation
    FROM
        Airport a
    INNER JOIN
        Airline al ON a.AirportID = al.AirportID
    WHERE
        al.AirlineName = @AirlineName;
END;

--Execute GetAirportInfoByAirline
EXEC GetAirportInfoByAirline @AirlineName = 'British Airways';
