drop table if exists DimOwner;
create table DimOwner(
	OwnerSK int identity(1,1) primary key,
	AlternateOwnerID nvarchar(50),
	OwnerName nvarchar(50),
	OwnerPhoneNumber numeric(18, 0),
	OwnerEmail nvarchar(50),
	StartDate datetime,
	EndDate datetime,
	InsertDate datetime, 
	ModifiedDate datetime,
)