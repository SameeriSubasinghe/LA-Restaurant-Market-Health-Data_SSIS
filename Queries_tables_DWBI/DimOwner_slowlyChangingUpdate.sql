select * from HV_Staging.dbo.stgOwner


/*Changing the phone number
Changing SCD
*/

select * from HV_Staging.dbo.stgOwner where OwnerID = 'OW0035036'
update HV_Staging.dbo.stgOwner set OwnerPhoneNumber = 6426933325 where OwnerID = 'OW0035036'

select * from DimOwner where AlternateOwnerID = 'OW0035036'


/*Changing the phone number
Changing SCD
*/

select * from HV_Staging.dbo.stgOwner where OwnerID = 'OW0178564'
update HV_Staging.dbo.stgOwner set OwnerPhoneNumber = 5706566666 where OwnerID = 'OW0178564'

select * from DimOwner where AlternateOwnerID = 'OW0178564'


/*Changing the OwnerName
Historical SCD
*/

select * from HV_Staging.dbo.stgOwner where OwnerID = 'OW0238756'
update HV_Staging.dbo.stgOwner set OwnerName = 'KOBUNGA SSC.LLC' where OwnerID = 'OW0238756'

select * from DimOwner where AlternateOwnerID = 'OW0238756'


/*Changing the OwnerName
Historical SCD
*/

select * from HV_Staging.dbo.stgOwner where OwnerID = 'OW0031653'
update HV_Staging.dbo.stgOwner set OwnerName = 'SANFORD .LLC' where OwnerID = 'OW0031653'

select * from DimOwner where AlternateOwnerID = 'OW0031653'

select * from DimOwner where AlternateOwnerID = 'OW00000005'


insert into HV_Staging.dbo.stgOwner(OwnerID, OwnerName, OwnerPhoneNumber, OwnerEmail) values ('OW00000005', 'SUs .LCC', 2160926088, NULL )









/*Changing the Email*/

select * from HV_Staging.dbo.stgOwner where OwnerID = 'OW0238756'
update HV_Staging.dbo.stgOwner set OwnerEmail = 'son@spencer.com' where OwnerID = 'OW0238756'

select * from DimOwner where AlternateOwnerID = 'OW0238756'

select * from HV_Staging.dbo.stgOwner where OwnerID = 'OW0035638'
update HV_Staging.dbo.stgOwner set OwnerEmail = NULL where OwnerID = 'OW0035638'

select * from DimOwner where AlternateOwnerID = 'OW0035638'

