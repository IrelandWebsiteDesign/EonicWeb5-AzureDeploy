if not Exists(select * from sys.columns where Name = N'nIssuedDirId' and Object_ID = Object_ID(N'tblCodes')) 
BEGIN
ALTER TABLE dbo.tblCodes ADD
	nIssuedDirId int NULL
END
if not Exists(select * from sys.columns where Name = N'dIssuedDate' and Object_ID = Object_ID(N'tblCodes')) 
BEGIN
ALTER TABLE dbo.tblCodes ADD
	dIssuedDate datetime NULL

END
if not Exists(select * from sys.columns where Name = N'xUsageData' and Object_ID = Object_ID(N'tblCodes')) 
BEGIN
ALTER TABLE dbo.tblCodes ADD

	xUsageData xml

END
