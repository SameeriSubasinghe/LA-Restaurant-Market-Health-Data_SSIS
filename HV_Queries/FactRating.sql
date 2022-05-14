drop table if exists FactRating;
create table FactRating(
    RatingID nvarchar(50),
	FacilityKey int foreign key references DimFacility(FacilitySK),
	ViolationKey int foreign key references DimViolation(ViolationSK),
    ActivityDate int foreign key references DimDate(DateKey),
	Fine int,
	Score int,
	accm_txn_create_time datetime,
	ModifiedDate datetime,
	accm_txn_complete_time datetime,
	txn_process_time_hours int
)
