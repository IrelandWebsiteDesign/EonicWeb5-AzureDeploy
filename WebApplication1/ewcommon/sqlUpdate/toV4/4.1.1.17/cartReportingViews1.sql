
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

