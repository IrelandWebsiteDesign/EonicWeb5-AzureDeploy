
CREATE PROCEDURE [dbo].[spMailFormDownload]
	-- Add the parameters for the stored procedure here
(
	@lastDownload int,
	@formType nvarchar(50)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	insert into tblActivityLog 
	(nUserDirId,nStructId,nArtId,dDateTime,nActivityType,cActivityDetail,cSessionId) 
	values
	('0',null,0,sysdatetime(),98,@formType,'')
IF @lastDownload > 0 
BEGIN
    -- Insert statements for procedure here
	Select a.dDateTime as 'DateTime', e.cActivityXml from tblActivityLog a inner join tblEmailActivityLog e on e.nEmailActivityKey = a.nStructId
	where nActivityType = 3
	and a.cActivityDetail = @formType
	and a.dDateTime >= (select dDateTime from tblActivityLog where nActivityKey = @lastDownload and cActivityDetail = @formType)
END
ELSE
	Select a.dDateTime as 'DateTime', e.cActivityXml from tblActivityLog a inner join tblEmailActivityLog e on e.nEmailActivityKey = a.nStructId
	where nActivityType = 3
	and a.cActivityDetail = @formType
END


