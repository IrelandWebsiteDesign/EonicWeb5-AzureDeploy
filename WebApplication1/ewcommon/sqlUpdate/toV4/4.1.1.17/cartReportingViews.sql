
CREATE VIEW [dbo].[vw_CartOverView]
AS
SELECT     dbo.tblCartOrder.nCartOrderKey, dbo.tblCartOrder.cCartSchemaName, dbo.tblCartOrder.nCartStatus, dbo.tblCartOrder.cCurrency, Items.nCartItemKey, Items.nQuantity,
                          (SELECT     CASE WHEN SUM(Options.nPrice) IS NULL THEN 0 WHEN SUM(Options.nQuantity) IS NULL THEN 0 ELSE SUM(Options.nPrice * Options.nQuantity) 
                                                   END AS nOptionsPrice
                            FROM          dbo.tblCartItem AS Options
                            WHERE      (nParentId = Items.nCartItemKey)) + Items.nPrice AS nLinePrice, dbo.tblContent.nContentKey, dbo.tblContent.cContentSchemaName, 
                      dbo.tblContent.cContentName, dbo.tblAudit.dInsertDate AS dCartDate
FROM         dbo.tblCartItem AS Items INNER JOIN
                      dbo.tblCartOrder ON Items.nCartOrderId = dbo.tblCartOrder.nCartOrderKey INNER JOIN
                      dbo.tblContent ON Items.nItemId = dbo.tblContent.nContentKey INNER JOIN
                      dbo.tblAudit ON dbo.tblCartOrder.nAuditId = dbo.tblAudit.nAuditKey
WHERE     (Items.nParentId IS NULL) OR
                      (Items.nParentId = 0)


CREATE VIEW [dbo].[vw_CartOverViewGroups]
AS
SELECT     dbo.vw_CartOverView.nCartOrderKey, dbo.vw_CartOverView.cCartSchemaName, dbo.vw_CartOverView.nCartStatus, dbo.vw_CartOverView.cCurrency, 
                      dbo.vw_CartOverView.nCartItemKey, dbo.vw_CartOverView.nQuantity, dbo.vw_CartOverView.nLinePrice, dbo.vw_CartOverView.nContentKey, 
                      dbo.vw_CartOverView.cContentSchemaName, dbo.vw_CartOverView.cContentName, dbo.vw_CartOverView.dCartDate, YEAR(dbo.vw_CartOverView.dCartDate) AS Year, 
                      MONTH(dbo.vw_CartOverView.dCartDate) AS Month, DAY(dbo.vw_CartOverView.dCartDate) AS Day, dbo.tblCartProductCategories.nCatKey, 
                      dbo.tblCartProductCategories.cCatSchemaName, dbo.tblCartProductCategories.cCatName, dbo.tblCartProductCategories.cCatDescription
FROM         dbo.tblCartProductCategories RIGHT OUTER JOIN
                      dbo.tblCartCatProductRelations ON dbo.tblCartProductCategories.nCatKey = dbo.tblCartCatProductRelations.nCatId RIGHT OUTER JOIN
                      dbo.vw_CartOverView ON dbo.tblCartCatProductRelations.nContentId = dbo.vw_CartOverView.nContentKey


CREATE VIEW [dbo].[vw_CartOverViewPages]
AS
SELECT     dbo.vw_CartOverView.nCartOrderKey, dbo.vw_CartOverView.cCartSchemaName, dbo.vw_CartOverView.nCartStatus, dbo.vw_CartOverView.cCurrency, 
                      dbo.vw_CartOverView.nCartItemKey, dbo.vw_CartOverView.nQuantity, dbo.vw_CartOverView.nLinePrice, dbo.vw_CartOverView.nContentKey, 
                      dbo.vw_CartOverView.cContentSchemaName, dbo.vw_CartOverView.cContentName, dbo.vw_CartOverView.dCartDate, YEAR(dbo.vw_CartOverView.dCartDate) AS Year, 
                      MONTH(dbo.vw_CartOverView.dCartDate) AS Month, { fn WEEK(dbo.vw_CartOverView.dCartDate) } AS Week, DAY(dbo.vw_CartOverView.dCartDate) AS Day, 
                      dbo.tblContentLocation.nStructId, dbo.tblContentLocation.bPrimary, dbo.tblContentLocation.bCascade
FROM         dbo.vw_CartOverView LEFT OUTER JOIN
                      dbo.tblContentLocation ON dbo.vw_CartOverView.nContentKey = dbo.tblContentLocation.nContentId




