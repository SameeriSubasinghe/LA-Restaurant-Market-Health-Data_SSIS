drop table if exists DimViolation;
create table DimViolation(
	ViolationSK int identity(1,1) primary key,
	AlternateViolationID nvarchar(50),
	ViolationDescription nvarchar(100),
	ViolationStatus nvarchar(50),
	InsertDate datetime, 
	ModifiedDate datetime,
)