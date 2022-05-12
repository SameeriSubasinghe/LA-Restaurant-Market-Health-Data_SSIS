CREATE PROCEDURE dbo.UpdateDimViolation
@ViolationID nvarchar(50),
@ViolationDescription nvarchar(100),
@ViolationStatus nvarchar(50)
AS 
BEGIN
if not exists (select ViolationSK
from dbo.DimViolation
where AlternateViolationID = @ViolationID) 
BEGIN
insert into dbo.DimViolation
(AlternateViolationID, ViolationDescription, ViolationStatus, InsertDate, ModifiedDate)
values
(@ViolationID, @ViolationDescription, @ViolationStatus, GETDATE(), GETDATE()) 
END;
if exists (select ViolationSK
from dbo.DimViolation
where AlternateViolationID = @ViolationID) 
BEGIN
update dbo.DimViolation
set ViolationDescription = @ViolationDescription,
ViolationStatus = @ViolationStatus,
ModifiedDate = GETDATE()
where AlternateViolationID = @ViolationID 
END;
END;