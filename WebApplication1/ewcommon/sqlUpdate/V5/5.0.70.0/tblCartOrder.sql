--Brings two values out of the Discount XML and adds them as top-level fields to aid performance
if not Exists(select * from sys.columns where Name = N'cSettlementID' and Object_ID = Object_ID(N'tblCartOrder')) 
BEGIN
ALTER TABLE dbo.tblCartOrder ADD
	cSettlementID nvarchar(50) NULL
END