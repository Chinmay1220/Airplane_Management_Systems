
--
--View 1: FlightDetailsWithSafetyAssessment
--This view includes details about flights along with safety assessment information.
Create VIEW FlightDetailsWithSafetyAssessment AS
SELECT
    F.FlightID,
    F.AirportID,
    F.AirlineID,
    F.CrewID,
    DA.AirportName AS DepartureAirportName,  -- Added column for departure airport name
    AA.AirportName AS ArrivalAirportName, 
    F.DepartureTime,
    F.ArrivalTime,
    F.FlightStatus,
    S.SafetyDate,
    S.SafetyDetails
FROM
    Flight F
LEFT JOIN
    SafetyAssessment S ON F.FlightID = S.FlightID
JOIN
    Airport DA ON F.DepartureAirportID = DA.AirportID  -- Join for departure airport name
JOIN
    Airport AA ON F.ArrivalAirportID = AA.AirportID  -- Join for arrival airport name;
 
 
select * from FlightDetailsWithSafetyAssessment
 



--View 2: AverageFuelConsumptionByAirline
--This view calculates the average fuel consumption for each airline.
CREATE VIEW AverageFuelConsumptionByAirline AS
SELECT
    A.AirlineID,
    A.AirlineName,
    AVG(FP.FuelConsumption) AS AverageFuelConsumption
FROM
    Airline A
LEFT JOIN
    Flight F ON A.AirlineID = F.AirlineID
LEFT JOIN
    FlightPerformance FP ON F.FlightID = FP.FlightID
GROUP BY
    A.AirlineID, A.AirlineName;
 

select * from AverageFuelConsumptionByAirline
 



--View 3: TotalBaggageWeightByFlight
--This view calculates the total baggage weight for each flight.
Create VIEW FlightBaggageTotal AS
SELECT
    F.FlightID,
    DA.AirportName AS DepartureAirport,
    AA.AirportName AS ArrivalAirport,
    P.FirstName,
	P.LastName,
    A.AirlineName,
    SUM(B.BaggageWeight) AS TotalBaggageWeight
FROM
    Flight F
JOIN Airport DA ON F.DepartureAirportID = DA.AirportID
JOIN Airport AA ON F.ArrivalAirportID = AA.AirportID
JOIN Baggage B ON F.FlightID = B.FlightID
JOIN Passenger P ON B.PassengerID = P.PassengerID
JOIN Airline A ON F.AirlineID = A.AirlineID
GROUP BY
    F.FlightID, F.DepartureAirportID, F.ArrivalAirportID, DA.AirportName, AA.AirportName, F.DepartureTime, F.ArrivalTime, P.FirstName, P.LastName, A.AirlineName;


select * from FlightBaggageTotal
 
 

--view 4: PassengerDetailsWithReservation
--This view provides information about passengers along with their reservation details.
Create VIEW PassengerDetailsWithReservation AS
SELECT
    P.PassengerID AS PassengerID_Passenger,
    P.FirstName,
    P.LastName,
    P.ContactInfo,
    PF.SeatNumber,
    R.ReservationStatus
FROM
    Passenger P
LEFT JOIN
    Ticket T ON P.PassengerID = T.PassengerID
LEFT JOIN
    PassengerFlight PF ON T.PassengerID = PF.PassengerID
LEFT JOIN 
    Reservation R ON R.ReservationID = PF.ReservationID;
 

select * from PassengerDetailsWithReservation
 
 
 