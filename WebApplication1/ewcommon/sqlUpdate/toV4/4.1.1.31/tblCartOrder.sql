if not Exists(select * from sys.columns where Name = N'cCartSiteRef' and Object_ID = Object_ID(N'tblCartOrder')) 
BEGIN
	ALTER TABLE tblCartOrder ADD cCartSiteRef nvarchar(50) NULL
END



