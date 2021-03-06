CREATE PROCEDURE [dbo].[spCartActivityGroupsPages] 
	@cGrouping nvarchar(50) = 'Page',
	@nYear int = 0 ,
	@nMonth int = 0,
	@nDay int = 0,
	@cCurrencySymbol nvarchar(50) = '',
	@nOrderStatus1 int = 6,
	@nOrderStatus2 int = 9,
	@cOrderType nvarchar(50) = 'ORDER'
AS
BEGIN
	IF 
		@cGrouping = '' OR @cGrouping = NULL OR @cGrouping = 'Page' 
		BEGIN
			SELECT 
			nCartOrderKey,
			cCartSchemaName,
			nCartStatus,
			CASE WHEN cCurrency = '' THEN NULL ELSE cCurrency END AS  cCurrencySymbol,
			nCartItemKey,
			nCartItemKey,
			nQuantity,
			nLinePrice,
			nContentKey,
			cContentSchemaName,
			cContentName,
			dCartDate,
			CASE WHEN @nYear > 0 THEN vw_CartOverViewPages.Year ELSE NULL  END AS nYear,
			CASE WHEN @nMonth > 0 THEN vw_CartOverViewPages.Month ELSE  NULL END AS nMonth,
			CASE WHEN @nDay > 0 THEN vw_CartOverViewPages.Day ELSE  NULL END AS nDay,
			nStructId,
			CASE WHEN bPrimary IS NULL THEN 0 ELSE bPrimary END AS bPrimaryLoc,
			CASE WHEN bCascade IS NULL THEN 0 ELSE bCascade END AS bCascadeDown
			
			FROM vw_CartOverViewPages
			WHERE 
				vw_CartOverViewPages.Year = CASE WHEN @nYear > 0 THEN @nYear ELSE vw_CartOverViewPages.Year  END
			AND
				vw_CartOverViewPages.Month = CASE WHEN @nMonth > 0 THEN @nMonth ELSE vw_CartOverViewPages.Month  END
			AND
				vw_CartOverViewPages.Day = CASE WHEN @nDay > 0 THEN @nDay ELSE vw_CartOverViewPages.Day  END
			AND 
				(
					nCartStatus = @nOrderStatus1
						OR 
					nCartStatus = @nOrderStatus2
				)
			AND 
				cCartSchemaName = @cOrderType
			AND 
				(
					cCurrency = CASE WHEN @cCurrencySymbol = '' THEN '' ELSE  @cCurrencySymbol END
						OR 
					cCurrency = CASE WHEN @cCurrencySymbol = '' THEN NULL ELSE  @cCurrencySymbol END
				)
			ORDER BY vw_CartOverViewPages.Year, vw_CartOverViewPages.Month, vw_CartOverViewPages.Day, vw_CartOverViewPages.nStructId
		END
	ELSE
		BEGIN
			SELECT
			nCartOrderKey,
			cCartSchemaName,
			nCartStatus,
			CASE WHEN cCurrency = '' THEN NULL ELSE cCurrency END AS  cCurrencySymbol,
			nCartItemKey,
			nCartItemKey,
			nQuantity,
			nLinePrice,
			nContentKey,
			cContentSchemaName,
			cContentName,
			dCartDate,
			CASE WHEN @nYear > 0 THEN vw_CartOverViewGroups.Year ELSE NULL  END AS nYear,
			CASE WHEN @nMonth > 0 THEN vw_CartOverViewGroups.Month ELSE  NULL END AS nMonth,
			CASE WHEN @nDay > 0 THEN vw_CartOverViewGroups.Day ELSE  NULL END AS nDay,
			nCatKey,
			cCatSchemaName,
			cCatName,
			cCatDescription
			FROM vw_CartOverViewGroups
			WHERE 
				vw_CartOverViewGroups.Year = CASE WHEN @nYear > 0 THEN @nYear ELSE vw_CartOverViewGroups.Year  END
			AND
				vw_CartOverViewGroups.Month = CASE WHEN @nMonth > 0 THEN @nMonth ELSE vw_CartOverViewGroups.Month  END
			AND
				vw_CartOverViewGroups.Day = CASE WHEN @nDay > 0 THEN @nDay ELSE vw_CartOverViewGroups.Day  END
			AND 
				(
					nCartStatus = @nOrderStatus1
						OR 
					nCartStatus = @nOrderStatus2
				)
			AND 
				cCartSchemaName = @cOrderType
			AND 
				(
					cCurrency = CASE WHEN @cCurrencySymbol = '' THEN '' ELSE  @cCurrencySymbol END
						OR 
					cCurrency = CASE WHEN @cCurrencySymbol = '' THEN NULL ELSE  @cCurrencySymbol END
				)
			ORDER BY vw_CartOverViewGroups.Year, vw_CartOverViewGroups.Month, vw_CartOverViewGroups.Day, vw_CartOverViewGroups.cCatName
		END
END
