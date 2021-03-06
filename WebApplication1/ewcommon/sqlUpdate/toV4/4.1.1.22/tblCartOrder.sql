BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION

CREATE TABLE Tmp_tblCartOrder
	(
	nCartOrderKey int NOT NULL IDENTITY (1, 1),
	cCartForiegnRef nvarchar(50) NULL,
	nCartStatus int NULL,
	cCurrency nvarchar(50) NULL,
	cCartSchemaName nvarchar(50) NULL,
	cCartSessionId nvarchar(50) NULL,
	nCartUserDirId int NULL,
	nPayMthdId int NULL,
	cPaymentRef nvarchar(50) NULL,
	cCartXml ntext NULL,
	nShippingMethodId int NULL,
	cShippingDesc nvarchar(255) NULL,
	nShippingCost money NULL,
	cClientNotes ntext NULL,
	cSellerNotes ntext NULL,
	cCampaignCode ntext NULL,
	nTaxRate float(53) NULL,
	nGiftListId int NULL,
	nAuditId int NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]

SET IDENTITY_INSERT Tmp_tblCartOrder ON

IF EXISTS(SELECT * FROM tblCartOrder)
	 EXEC('INSERT INTO dbo.Tmp_tblCartOrder (nCartOrderKey, cCartForiegnRef, nCartStatus, cCurrency, cCartSchemaName, cCartSessionId, nCartUserDirId, nPayMthdId, cPaymentRef, cCartXml, nShippingMethodId, cShippingDesc, nShippingCost, cClientNotes, cSellerNotes, nTaxRate, nGiftListId, nAuditId)
		SELECT nCartOrderKey, cCartForiegnRef, nCartStatus, cCurrency, cCartSchemaName, cCartSessionId, nCartUserDirId, nPayMthdId, cPaymentRef, cCartXml, nShippingMethodId, cShippingDesc, nShippingCost, cClientNotes, cSellerNotes, nTaxRate, nGiftListId, nAuditId FROM dbo.tblCartOrder WITH (HOLDLOCK TABLOCKX)')

SET IDENTITY_INSERT Tmp_tblCartOrder OFF

DROP TABLE tblCartOrder

EXECUTE sp_rename N'dbo.Tmp_tblCartOrder', N'tblCartOrder', 'OBJECT' 

ALTER TABLE tblCartOrder ADD CONSTRAINT
	PK_tblCartOrder PRIMARY KEY CLUSTERED 
	(
	nCartOrderKey
	) WITH FILLFACTOR = 90 ON [PRIMARY]


COMMIT
