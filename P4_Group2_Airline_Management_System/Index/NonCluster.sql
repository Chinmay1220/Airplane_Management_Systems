
/*NON-CLUSTERED INDEXES*/

--Non-Clustered Index 1
CREATE NONCLUSTERED INDEX IX_Tickets_PassengerID
ON Ticket (PassengerID);
 
SELECT *
FROM Ticket
WHERE PassengerID = '1200';
 
--Non-Clustered Index 2
CREATE NONCLUSTERED INDEX IX_Flights_FlightStatus
ON Flight(FlightStatus);
 
SELECT *
FROM Flight
WHERE FlightStatus= 'Scheduled';

--Non-Clustered Index 3
CREATE NONCLUSTERED INDEX IX_CrewMember_CrewPosition
ON CrewMember(CrewPosition);
 
SELECT * 
FROM CrewMember
WHERE CrewPosition='Pilot';
