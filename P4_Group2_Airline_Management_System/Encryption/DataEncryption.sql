--Creating Column Data Encryption for SSN Column
ALTER TABLE Passenger
ALTER COLUMN SSN VARCHAR(9);
 
ALTER TABLE Passenger
ADD CONSTRAINT CK_SSN CHECK (LEN(SSN) = 9 AND SSN NOT LIKE '%[^0-9]%');

alter table passenger
ADD SSN_Enc VARBINARY(MAX);
 
UPDATE Passenger
SET SSN_Enc = ENCRYPTBYPASSPHRASE('Pass', SSN);