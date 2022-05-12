
drop table if exists DimFacility;
create table DimFacility(
	FacilitySK int identity(1,1) primary key,
	AlternateFacilityID nvarchar(50),
	FacilityName nvarchar(200),
	FacilityCity nvarchar(50),
	FacilityAddress nvarchar(200),
	OwnerKey int foreign key references DimOwner(OwnerSK),
	InsertDate datetime, 
	ModifiedDate datetime,
)

