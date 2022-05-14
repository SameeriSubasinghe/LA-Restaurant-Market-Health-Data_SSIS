CREATE PROCEDURE dbo.UpdateDimFacility
@FacilityID nvarchar(50),
@FacilityName nvarchar(200),
@FacilityCity nvarchar(50),
@FacilityAddress nvarchar(200),
@OwnerKey int
AS
BEGIN
if not exists (select FacilitySK
from dbo.DimFacility
where AlternateFacilityID= @FacilityID) 
BEGIN
insert into dbo.DimFacility
(AlternateFacilityID, FacilityName, FacilityCity, FacilityAddress, OwnerKey, InsertDate, ModifiedDate)
values
(@FacilityID, @FacilityName, @FacilityCity, @FacilityAddress, @OwnerKey, GETDATE(), GETDATE())
END;
if exists (select FacilitySK
from dbo.DimFacility
where AlternateFacilityID = @FacilityID) 
BEGIN
update dbo.DimFacility
set OwnerKey = @OwnerKey,
FacilityName = @FacilityName, 
FacilityCity = @FacilityCity,
FacilityAddress = @FacilityAddress,
ModifiedDate = GETDATE()
where AlternateFacilityID = @FacilityID
END;
END;