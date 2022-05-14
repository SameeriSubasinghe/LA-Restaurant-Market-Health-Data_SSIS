select * from DimViolation 

select * from HV_Staging.dbo.stgViolations

insert into HV_Staging.dbo.stgViolations(ViolationID, ViolationDescription, ViolationStatus) values ('VL101', 'Hot and Cool water available', 'OUT OF COMPLIANCE' )

update HV_Staging.dbo.stgViolations set ViolationDescription = 'Cool water available' where ViolationID = 'VL101'