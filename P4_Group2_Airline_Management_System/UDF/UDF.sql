
--UDF 1
-- Create the user-defined function (UDF) to calculate Maintenance Cost of flight
CREATE FUNCTION dbo.GetFlightDetailsWithMaintenanceCost(@FlightID INT)
RETURNS TABLE
AS
RETURN
(
    SELECT
        fp.PerformanceID,
        fp.FlightID,
        fp.FuelConsumption,
        m.MaintenanceID,
        MaintenanceCost = 
            CASE 
                WHEN fp.FuelConsumption > 100 
                THEN fp.FuelConsumption * 5.0
                ELSE 0.0 
            END
    FROM
        FlightPerformance fp
    JOIN
        Maintenance m ON fp.FlightID = m.FlightID
    WHERE
        fp.FlightID = @FlightID
);

-- Use the function to get MaintenanceCost for a specific flight
DECLARE @FlightID INT = '108'
SELECT * FROM dbo.GetFlightDetailsWithMaintenanceCost(@FlightID);




--UDF 2
-- Create a function to calculate extra baggage cost of passenger
CREATE FUNCTION dbo.CalculateExtraBaggageCost(@FirstName NVARCHAR(50), @LastName NVARCHAR(50))
RETURNS TABLE
AS
RETURN (
    SELECT
        B.BaggageID,
        B.PassengerID,
        B.FlightID,
        B.BaggageWeight,
        B.BaggageStatus,
        CASE
            WHEN B.BaggageWeight > 20.0 THEN (B.BaggageWeight - 20.0) * 2.0
            ELSE 0.0 
        END AS ExtraBaggageCost
    FROM
        Baggage B
        INNER JOIN Passenger P ON B.PassengerID = P.PassengerID
    WHERE
        P.FirstName = @FirstName AND P.LastName = @LastName
);

-- Use the function to get extra baggage cost for a specific passenger
DECLARE @FirstName NVARCHAR(50) = 'Zoe';
DECLARE @LastName NVARCHAR(50) = 'Martin';
SELECT * FROM dbo.CalculateExtraBaggageCost(@FirstName, @LastName);