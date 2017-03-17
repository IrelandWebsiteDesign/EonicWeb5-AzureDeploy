SET QUOTED_IDENTIFIER ON 

SET ANSI_NULLS ON 

CREATE     FUNCTION dbo.fxn_GetOtherActivityDetail (@nActivityType int, @nOtherId int)
RETURNS  nvarchar(255)
AS
BEGIN
DECLARE @Return nvarchar(255)
	--Check What Type it is and set the tables
IF @nActivityType = 5
	BEGIN
		SET @Return = (SELECT TOP 1 cAlertTitle FROM tblAlerts WHERE nAlertKey = @nOtherId)
	END
ELSE
	BEGIN
		SET @Return = ''
	END

RETURN  @Return
END


SET QUOTED_IDENTIFIER OFF 

SET ANSI_NULLS ON 


