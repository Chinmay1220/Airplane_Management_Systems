--LOG
CREATE TABLE FlightLogs (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    FlightID INT,
    LogMessage VARCHAR(255),
    LogTime DATETIME,
    --CONSTRAINT FK_FlightLogs_Flights FOREIGN KEY (FlightID) REFERENCES Flight(FlightID)
);

create TRIGGER FlightTrigger
ON Flight
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    -- Check for INSERT
    IF EXISTS (SELECT 1 FROM INSERTED)
    BEGIN
        INSERT INTO FlightLogs (FlightID, LogMessage, LogTime)
        SELECT i.FlightID, 'Data inserted', GETDATE()
        FROM INSERTED i;
    END
    -- Check for DELETE
    IF EXISTS (SELECT 1 FROM DELETED)
    BEGIN
        INSERT INTO FlightLogs (FlightID, LogMessage, LogTime)
        SELECT d.FlightID, 'Flight deleted', GETDATE()
        FROM DELETED d;
    END
    -- Check for UPDATE
    IF EXISTS (SELECT 1 FROM INSERTED) AND EXISTS (SELECT 1 FROM DELETED)
    BEGIN
        INSERT INTO FlightLogs (FlightID, LogMessage, LogTime)
        SELECT i.FlightID, 'Flight updated', GETDATE()
        FROM INSERTED i
        INNER JOIN DELETED d ON i.FlightID = d.FlightID
        WHERE 
            i.FlightID <> d.FlightID OR
            i.DepartureAirportID <> d.DepartureAirportID OR
            i.ArrivalAirportID <> d.ArrivalAirportID OR
            i.DepartureTime <> d.DepartureTime OR
            i.ArrivalTime <> d.ArrivalTime;
    END
END;
 

