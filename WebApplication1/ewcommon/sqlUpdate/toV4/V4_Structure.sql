CREATE TABLE [dbo].[tblAudit] (
	[nAuditKey] [int] IDENTITY (1, 1) NOT NULL ,
	[dPublishDate] [datetime] NULL ,
	[dExpireDate] [datetime] NULL ,
	[dInsertDate] [datetime] NOT NULL ,
	[nInsertDirId] [int] NOT NULL ,
	[dUpdateDate] [datetime] NULL ,
	[nUpdateDirId] [int] NULL ,
	[nStatus] [int] NOT NULL ,
	[cDescription] [nvarchar] (255)  NULL 
) ON [PRIMARY]


CREATE TABLE [dbo].[tblCartContact] (
	[nContactKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nContactDirId] [int] NULL ,
	[nContactCartId] [int] NULL ,
	[cContactType] [nvarchar] (255)  NULL ,
	[cContactName] [nvarchar] (255)  NULL ,
	[cContactCompany] [nvarchar] (255)  NULL ,
	[cContactAddress] [nvarchar] (255)  NULL ,
	[cContactCity] [nvarchar] (255)  NULL ,
	[cContactState] [nvarchar] (255)  NULL ,
	[cContactZip] [nvarchar] (255)  NULL ,
	[cContactCountry] [nvarchar] (255)  NULL ,
	[cContactTel] [nvarchar] (255)  NULL ,
	[cContactFax] [nvarchar] (255)  NULL ,
	[cContactEmail] [nvarchar] (255)  NULL ,
	[cContactXml] [nvarchar] (800)  NULL ,
	[nAuditId] [int] NULL 
) ON [PRIMARY]


CREATE TABLE [dbo].[tblLookup] (
	[nLkpID] [int] IDENTITY (1, 1) NOT NULL ,
	[cLkpKey] [nvarchar] (255)  NOT NULL ,
	[cLkpValue] [nvarchar] (255)  NULL ,
	[cLkpCategory] [nvarchar] (255)  NOT NULL 
) ON [PRIMARY]


CREATE TABLE [dbo].[tblCartPaymentMethod] (
	[nPayMthdKey] [int] NOT NULL ,
	[nPayMthdUserId] [int] NULL ,
	[cPayMthdProviderName] [nvarchar] (50)  NULL ,
	[cPayMthdProviderRef] [nvarchar] (50)  NULL ,
	[cPayMthdCardType] [nvarchar] (50)  NULL ,
	[cPayMthdDescription] [nvarchar] (255)  NULL ,
	[nAuditId] [int] NULL 
) ON [PRIMARY]


CREATE TABLE [dbo].[tblCartProductCategories] (
	[nCatKey] [int] NOT NULL ,
	[cCatSchemaName] [nvarchar] (50)  NULL ,
	[cCatForeignRef] [nvarchar] (50)  NULL ,
	[nCatParentId] [int] NULL ,
	[cCatName] [nvarchar] (255)  NULL ,
	[nAuditId] [int] NULL 
) ON [PRIMARY]


CREATE TABLE [dbo].[tblCartShippingLocations] (
	[nLocationKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nLocationType] [int] NULL ,
	[nLocationParId] [int] NULL ,
	[cLocationNameFull] [nvarchar] (255)  NULL ,
	[cLocationNameShort] [nvarchar] (50)  NULL ,
	[cLocationISOnum] [char] (5)  NULL ,
	[cLocationISOa2] [char] (2)  NULL ,
	[cLocationISOa3] [char] (3)  NULL ,
	[cLocationCode] [nvarchar] (10)  NULL ,
	[nLocationTaxRate] [float] NULL ,
	[nAuditId] [int] NULL 
) ON [PRIMARY]


CREATE TABLE [dbo].[tblContent] (
	[nContentKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nContentPrimaryId] [int] NOT NULL ,
	[nVersion] [int] NULL ,
	[cContentForiegnRef] [nvarchar] (50)  NULL ,
	[cContentName] [nvarchar] (255)  NOT NULL ,
	[cContentSchemaName] [nvarchar] (50)  NOT NULL ,
	[cContentXmlBrief] [ntext]  NULL ,
	[cContentXmlDetail] [ntext]  NULL ,
	[nAuditId] [int] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


CREATE TABLE [dbo].[tblContentStructure] (
	[nStructKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nStructParId] [int] NOT NULL ,
	[cStructForiegnRef] [nvarchar] (50)  NULL ,
	[cStructName] [nvarchar] (50)  NOT NULL ,
	[cStructDescription] [ntext]  NULL ,
	[cUrl] [nvarchar] (255)  NULL ,
	[nStructOrder] [int] NOT NULL ,
	[cStructLayout] [nvarchar] (50)  NULL ,
	[nAuditId] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


CREATE TABLE [dbo].[tblDirectory] (
	[nDirKey] [int] IDENTITY (1, 1) NOT NULL ,
	[cDirSchema] [nvarchar] (50)  NOT NULL ,
	[cDirForiegnRef] [nvarchar] (50)  NULL ,
	[cDirName] [nvarchar] (50)  NOT NULL ,
	[cDirPassword] [nvarchar] (50)  NULL ,
	[cDirXml] [ntext]  NULL ,
	[nAuditId] [int] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


CREATE TABLE [dbo].[tblActivityLog] (
	[nActivityKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nUserDirId] [int] NULL ,
	[nStructId] [int] NULL ,
	[nArtId] [int] NOT NULL ,
	nOtherId int NULL,
	[dDateTime] [datetime] NOT NULL ,
	[nActivityType] [int] NOT NULL ,
	[cActivityDetail] [nvarchar] (800)  NULL ,
	[cSessionId] [nvarchar] (50)  NOT NULL 
) ON [PRIMARY]


CREATE TABLE [dbo].[tblCartCatProductRelations] (
	[nCatProductRelKey] [int] NOT NULL ,
	[nContentId] [int] NOT NULL ,
	[nCatId] [int] NOT NULL ,
	[nAuditId] [int] NULL 
) ON [PRIMARY]


CREATE TABLE [dbo].[tblCartDiscountRules] (
	[nDiscountKey] [int] NOT NULL ,
	[nDiscountForeignRef] [nvarchar] (50)  NULL ,
	[cDiscountName] [nvarchar] (50)  NULL ,
	[cDiscountCode] [nvarchar] (50)  NULL ,
	[bDiscountIsPercent] [binary] (50) NULL ,
	[bDiscountIsCompound] [binary] (50) NULL ,
	[nDiscountValue] [char] (10)  NULL ,
	[nDiscountMinPrice] [nvarchar] (50)  NULL ,
	[nDiscountMinQuantity] [nvarchar] (50)  NULL ,
	[nDiscountCat] [int] NULL ,
	[nAuditId] [int] NULL 
) ON [PRIMARY]


CREATE TABLE [dbo].[tblCartOrder] (
	[nCartOrderKey] [int] IDENTITY (1, 1) NOT NULL ,
	[cCartForiegnRef] [nvarchar] (50)  NULL ,
	[nCartStatus] [int] NULL ,
	[cCartSchemaName] [nvarchar] (50)  NULL ,
	[cCartSessionId] [nvarchar] (50)  NULL ,
	[nCartUserDirId] [int] NULL ,
	[nPayMthdId] [int] NULL ,
	[cPaymentRef] [nvarchar] (50)  NULL ,
	[cCartXml] [nvarchar] (800)  NULL ,
	[nShippingMethodId] [int] NULL ,
	[cShippingDesc] [nvarchar] (50)  NULL ,
	[nShippingCost] [money] NULL ,
	[cClientNotes] [ntext]  NULL ,
	[cSellerNotes] [ntext]  NULL ,
	[nTaxRate] [float] NULL ,
	[nGiftListId] [int] NULL ,
	[nAuditId] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


CREATE TABLE [dbo].[tblCartShippingMethods] (
	[nShipOptKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nShipOptCat] [int] NULL ,
	[cShipOptName] [nvarchar] (255)  NULL ,
	[cShipOptCarrier] [nvarchar] (100)  NULL ,
	[cShipOptTime] [nvarchar] (50)  NULL ,
	[cShipOptTandC] [ntext]  NULL ,
	[nShipOptCost] [money] NULL ,
	[nShipOptPercentage] [float] NULL ,
	[nShipOptQuantMin] [float] NULL ,
	[nShipOptQuantMax] [float] NULL ,
	[nShipOptWeightMin] [float] NULL ,
	[nShipOptWeightMax] [float] NULL ,
	[nShipOptPriceMin] [float] NULL ,
	[nShipOptPriceMax] [float] NULL ,
	[nShipOptHandlingPercentage] [float] NULL ,
	[nShipOptHandlingFixedCost] [float] NULL ,
	[nShipOptTaxRate] [float] NULL ,
	[nAuditId] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


CREATE TABLE [dbo].[tblContentLocation] (
	[nContentLocationKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nStructId] [int] NULL ,
	[nContentId] [int] NULL ,
	[bPrimary] [bit] NULL ,
	[bCascade] [bit] NULL ,
	[nDisplayOrder] [int] NULL ,
	[nAuditId] [int] NULL 
) ON [PRIMARY]


CREATE TABLE [dbo].[tblContentRelation] (
	[nContentRelationKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nContentParentId] [int] NOT NULL ,
	[nContentChildId] [int] NOT NULL ,
	[nDisplayOrder] [int] NULL ,
	[nAuditId] [int] NOT NULL 
) ON [PRIMARY]


CREATE TABLE [dbo].[tblDirectoryPermission] (
	[nPermKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nDirId] [int] NOT NULL ,
	[nStructId] [int] NOT NULL ,
	[nAccessLevel] [int] NOT NULL ,
	[nAuditId] [int] NOT NULL 
) ON [PRIMARY]


CREATE TABLE [dbo].[tblDirectoryRelation] (
	[nRelKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nDirParentId] [int] NOT NULL ,
	[nDirChildId] [int] NOT NULL ,
	[nAuditId] [int] NOT NULL 
) ON [PRIMARY]


CREATE TABLE [dbo].[tblCartDiscountGroupRelations] (
	[nDiscountGroupRelationKey] [int] NOT NULL ,
	[nDiscountId] [int] NULL ,
	[nDirId] [int] NULL ,
	[nAuditId] [int] NULL 
) ON [PRIMARY]


CREATE TABLE [dbo].[tblCartItem] (
	[nCartItemKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nCartOrderId] [int] NULL ,
	[nItemId] [int] NULL ,
	[nParentID] [int] NULL ,
	[cItemRef] [nvarchar] (50)  NULL ,
	[cItemURL] [nvarchar] (255)  NOT NULL ,
	[cItemName] [nvarchar] (255)  NULL ,
	[nItemOptGrpIdx] [nvarchar] (50)  NOT NULL ,
	[nItemOptIdx] [nvarchar] (50)  NULL ,
	[nPrice] [money] NULL ,
	[nShpCat] [int] NULL ,
	[nDiscountCat] [int] NULL ,
	[nDiscountValue] [money] NULL ,
	[nTaxRate] [decimal](18, 0) NULL ,
	[nQuantity] [decimal](18, 0) NULL ,
	[nWeight] [float] NULL ,
	[nAuditId] [int] NULL 
) ON [PRIMARY]


CREATE TABLE [dbo].[tblCartShippingRelations] (
	[nShpRelKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nShpOptId] [int] NULL ,
	[nShpLocId] [int] NULL ,
	[nAuditId] [int] NULL 
) ON [PRIMARY]


ALTER TABLE [dbo].[tblAudit] WITH NOCHECK ADD 
	CONSTRAINT [PK_tbl_audit] PRIMARY KEY  CLUSTERED 
	(
		[nAuditKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblCartContact] WITH NOCHECK ADD 
	CONSTRAINT [PK_tbl_ewc_contact] PRIMARY KEY  CLUSTERED 
	(
		[nContactKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblLookup] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblLookup] PRIMARY KEY  CLUSTERED 
	(
		[nLkpID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblCartPaymentMethod] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblCartPaymentMethod] PRIMARY KEY  CLUSTERED 
	(
		[nPayMthdKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblCartProductCategories] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblCartProductCategories] PRIMARY KEY  CLUSTERED 
	(
		[nCatKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblCartShippingLocations] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblCartShippingLocations] PRIMARY KEY  CLUSTERED 
	(
		[nLocationKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblContent] WITH NOCHECK ADD 
	CONSTRAINT [PK_tbl_Content] PRIMARY KEY  CLUSTERED 
	(
		[nContentKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblContentStructure] WITH NOCHECK ADD 
	CONSTRAINT [PK_tbl_ContentStructure] PRIMARY KEY  CLUSTERED 
	(
		[nStructKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblDirectory] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblDirectory] PRIMARY KEY  CLUSTERED 
	(
		[nDirKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblActivityLog] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblActivityLog] PRIMARY KEY  CLUSTERED 
	(
		[nActivityKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblCartCatProductRelations] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblCartCatProductRelations] PRIMARY KEY  CLUSTERED 
	(
		[nCatProductRelKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblCartDiscountRules] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblCartDiscountRules] PRIMARY KEY  CLUSTERED 
	(
		[nDiscountKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblCartOrder] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblCartOrder] PRIMARY KEY  CLUSTERED 
	(
		[nCartOrderKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblCartShippingMethods] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblCartShippingMethods] PRIMARY KEY  CLUSTERED 
	(
		[nShipOptKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblContentRelation] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblContentRelation] PRIMARY KEY  CLUSTERED 
	(
		[nContentRelationKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblDirectoryPermission] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblPermission] PRIMARY KEY  CLUSTERED 
	(
		[nPermKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblDirectoryRelation] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblDirectoryRelation] PRIMARY KEY  CLUSTERED 
	(
		[nRelKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblCartDiscountGroupRelations] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblCartDiscountGroupRelations] PRIMARY KEY  CLUSTERED 
	(
		[nDiscountGroupRelationKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblCartItem] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblCartItem] PRIMARY KEY  CLUSTERED 
	(
		[nCartItemKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


ALTER TABLE [dbo].[tblCartShippingRelations] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblCartShippingRelations] PRIMARY KEY  CLUSTERED 
	(
		[nShpRelKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


 CREATE  INDEX [IX_tblAudit_PublishDate] ON [dbo].[tblAudit]([dPublishDate]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblAudit_ExpireDate] ON [dbo].[tblAudit]([dExpireDate]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblAudit] ON [dbo].[tblAudit]([nAuditKey]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblAudit_UpdateDate] ON [dbo].[tblAudit]([dUpdateDate]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblAudit_Status] ON [dbo].[tblAudit]([nStatus]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblAudit_InsertDate] ON [dbo].[tblAudit]([dInsertDate] DESC ) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [PK_tblLookup_Index] ON [dbo].[tblLookup]([nLkpID] DESC , [cLkpKey], [cLkpValue], [cLkpCategory]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblLookup_Cat] ON [dbo].[tblLookup]([cLkpCategory]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblLookup_Key] ON [dbo].[tblLookup]([cLkpKey]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblLookup_Val] ON [dbo].[tblLookup]([cLkpValue]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblLookup_CatValue] ON [dbo].[tblLookup]([nLkpID]) WITH  FILLFACTOR = 90 ON [PRIMARY]


ALTER TABLE [dbo].[tblContent] ADD 
	CONSTRAINT [DF_tblContent_nContentPrimaryId] DEFAULT (0) FOR [nContentPrimaryId],
	CONSTRAINT [DF_tblContent_nVersion] DEFAULT (1) FOR [nVersion]


 CREATE  INDEX [IX_tblContent] ON [dbo].[tblContent]([cContentForiegnRef]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContent_primid] ON [dbo].[tblContent]([nContentPrimaryId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContent_Version] ON [dbo].[tblContent]([nVersion]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContent_Name] ON [dbo].[tblContent]([cContentName]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContent_SchemaName] ON [dbo].[tblContent]([nContentKey], [cContentSchemaName]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContent_AuditId] ON [dbo].[tblContent]([nAuditId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


ALTER TABLE [dbo].[tblContentStructure] ADD 
	CONSTRAINT [DF_tblContentStructure_nStructOrder] DEFAULT (0) FOR [nStructOrder]


 CREATE  INDEX [IX_tblContentStructure] ON [dbo].[tblContentStructure]([cStructForiegnRef]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContentStructure_ParId] ON [dbo].[tblContentStructure]([nStructParId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContentStructure_Name] ON [dbo].[tblContentStructure]([cStructName]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContentStructure_StructOrder] ON [dbo].[tblContentStructure]([nStructOrder]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContentStructure_Layout] ON [dbo].[tblContentStructure]([cStructLayout]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContentStructure_Audit] ON [dbo].[tblContentStructure]([nAuditId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblDirectory] ON [dbo].[tblDirectory]([cDirForiegnRef]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblDirectory_Schema] ON [dbo].[tblDirectory]([cDirSchema]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblDirectory_Name] ON [dbo].[tblDirectory]([cDirName]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblDirectory_Audit] ON [dbo].[tblDirectory]([nAuditId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblDirectory_1] ON [dbo].[tblDirectory]([nDirKey]) WITH  FILLFACTOR = 90 ON [PRIMARY]


ALTER TABLE [dbo].[tblCartShippingMethods] ADD 
	CONSTRAINT [DF_tblCartShippingMethods_nShipOptPercentage] DEFAULT (0) FOR [nShipOptPercentage],
	CONSTRAINT [DF_tblCartShippingMethods_nShipOptQuantMin] DEFAULT (0) FOR [nShipOptQuantMin],
	CONSTRAINT [DF_tblCartShippingMethods_nShipOptTaxRate] DEFAULT (0) FOR [nShipOptTaxRate]


ALTER TABLE [dbo].[tblContentLocation] ADD 
	CONSTRAINT [PK_tblContentLocation] UNIQUE  NONCLUSTERED 
	(
		[nContentLocationKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 


 CREATE  INDEX [IX_tblContentLocation_Struct] ON [dbo].[tblContentLocation]([nStructId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContentLocation_Content] ON [dbo].[tblContentLocation]([nContentId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContentLocation_DisplayOrder] ON [dbo].[tblContentLocation]([nDisplayOrder]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContentLocation_Audit] ON [dbo].[tblContentLocation]([nAuditId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContentRelation_Parent] ON [dbo].[tblContentRelation]([nContentParentId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContentRelation_Child] ON [dbo].[tblContentRelation]([nContentChildId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContentRelation_Order] ON [dbo].[tblContentRelation]([nDisplayOrder]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblContentRelation_Audit] ON [dbo].[tblContentRelation]([nAuditId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblPermission_Dir] ON [dbo].[tblDirectoryPermission]([nDirId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblPermission_struct] ON [dbo].[tblDirectoryPermission]([nStructId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblPermission_Access] ON [dbo].[tblDirectoryPermission]([nAccessLevel]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblPermission_Audit] ON [dbo].[tblDirectoryPermission]([nAuditId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblDirectoryRelation] ON [dbo].[tblDirectoryRelation]([nDirParentId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblDirectoryRelation_1] ON [dbo].[tblDirectoryRelation]([nDirChildId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblDirectoryRelation_Parent] ON [dbo].[tblDirectoryRelation]([nDirParentId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblDirectoryRelation_Child] ON [dbo].[tblDirectoryRelation]([nDirChildId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblDirectoryRelation_Audit] ON [dbo].[tblDirectoryRelation]([nAuditId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


 CREATE  INDEX [IX_tblDirectoryRelation_ParentChild] ON [dbo].[tblDirectoryRelation]([nDirParentId], [nDirChildId]) WITH  FILLFACTOR = 90 ON [PRIMARY]


ALTER TABLE [dbo].[tblCartPaymentMethod] ADD 
	CONSTRAINT [FK_tblCartPaymentMethod_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	)


ALTER TABLE [dbo].[tblCartProductCategories] ADD 
	CONSTRAINT [FK_tblCartProductCategories_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	)


ALTER TABLE [dbo].[tblCartShippingLocations] ADD 
	CONSTRAINT [FK_tblCartShippingLocations_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	)


ALTER TABLE [dbo].[tblContent] ADD 
	CONSTRAINT [FK_tblContent_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	)


alter table [dbo].[tblContent] nocheck constraint [FK_tblContent_tblAudit]


ALTER TABLE [dbo].[tblContentStructure] ADD 
	CONSTRAINT [FK_tblContentStructure_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	)


alter table [dbo].[tblContentStructure] nocheck constraint [FK_tblContentStructure_tblAudit]


ALTER TABLE [dbo].[tblDirectory] ADD 
	CONSTRAINT [FK_tblDirectory_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	)


alter table [dbo].[tblDirectory] nocheck constraint [FK_tblDirectory_tblAudit]


ALTER TABLE [dbo].[tblActivityLog] ADD 
	CONSTRAINT [FK_tblActivityLog_tblContentStructure] FOREIGN KEY 
	(
		[nStructId]
	) REFERENCES [dbo].[tblContentStructure] (
		[nStructKey]
	),
	CONSTRAINT [FK_tblActivityLog_tblDirectory] FOREIGN KEY 
	(
		[nUserDirId]
	) REFERENCES [dbo].[tblDirectory] (
		[nDirKey]
	)


ALTER TABLE [dbo].[tblCartCatProductRelations] ADD 
	CONSTRAINT [FK_tblCartCatProductRelations_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	),
	CONSTRAINT [FK_tblCartCatProductRelations_tblCartProductCategories] FOREIGN KEY 
	(
		[nCatId]
	) REFERENCES [dbo].[tblCartProductCategories] (
		[nCatKey]
	),
	CONSTRAINT [FK_tblCartCatProductRelations_tblContent] FOREIGN KEY 
	(
		[nContentId]
	) REFERENCES [dbo].[tblContent] (
		[nContentKey]
	)


ALTER TABLE [dbo].[tblCartDiscountRules] ADD 
	CONSTRAINT [FK_tblCartDiscountRules_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	),
	CONSTRAINT [FK_tblCartDiscountRules_tblCartProductCategories] FOREIGN KEY 
	(
		[nDiscountCat]
	) REFERENCES [dbo].[tblCartProductCategories] (
		[nCatKey]
	)


ALTER TABLE [dbo].[tblCartOrder] ADD 
	CONSTRAINT [FK_tblCartOrder_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	),
	CONSTRAINT [FK_tblCartOrder_tblCartPaymentMethod] FOREIGN KEY 
	(
		[nPayMthdId]
	) REFERENCES [dbo].[tblCartPaymentMethod] (
		[nPayMthdKey]
	) NOT FOR REPLICATION 


alter table [dbo].[tblCartOrder] nocheck constraint [FK_tblCartOrder_tblCartPaymentMethod]


ALTER TABLE [dbo].[tblCartShippingMethods] ADD 
	CONSTRAINT [FK_tblCartShippingMethods_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	),
	CONSTRAINT [FK_tblCartShippingMethods_tblCartProductCategories] FOREIGN KEY 
	(
		[nShipOptCat]
	) REFERENCES [dbo].[tblCartProductCategories] (
		[nCatKey]
	)


alter table [dbo].[tblCartShippingMethods] nocheck constraint [FK_tblCartShippingMethods_tblCartProductCategories]


ALTER TABLE [dbo].[tblContentLocation] ADD 
	CONSTRAINT [FK_tblContentLocations_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	),
	CONSTRAINT [FK_tblContentLocations_tblContent] FOREIGN KEY 
	(
		[nContentId]
	) REFERENCES [dbo].[tblContent] (
		[nContentKey]
	),
	CONSTRAINT [FK_tblContentLocations_tblContentStructure] FOREIGN KEY 
	(
		[nStructId]
	) REFERENCES [dbo].[tblContentStructure] (
		[nStructKey]
	)


alter table [dbo].[tblContentLocation] nocheck constraint [FK_tblContentLocations_tblAudit]


ALTER TABLE [dbo].[tblContentRelation] ADD 
	CONSTRAINT [FK_tblContentRelation_tblContent] FOREIGN KEY 
	(
		[nContentParentId]
	) REFERENCES [dbo].[tblContent] (
		[nContentKey]
	),
	CONSTRAINT [FK_tblContentRelation_tblContent1] FOREIGN KEY 
	(
		[nContentChildId]
	) REFERENCES [dbo].[tblContent] (
		[nContentKey]
	)


ALTER TABLE [dbo].[tblDirectoryPermission] ADD 
	CONSTRAINT [FK_tblPermission_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	),
	CONSTRAINT [FK_tblPermission_tblContentStructure] FOREIGN KEY 
	(
		[nStructId]
	) REFERENCES [dbo].[tblContentStructure] (
		[nStructKey]
	),
	CONSTRAINT [FK_tblPermission_tblDirectory] FOREIGN KEY 
	(
		[nDirId]
	) REFERENCES [dbo].[tblDirectory] (
		[nDirKey]
	)


alter table [dbo].[tblDirectoryPermission] nocheck constraint [FK_tblPermission_tblAudit]


ALTER TABLE [dbo].[tblDirectoryRelation] ADD 
	CONSTRAINT [FK_tblDirectoryRelation_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	),
	CONSTRAINT [FK_tblDirectoryRelation_tblDirectory] FOREIGN KEY 
	(
		[nDirParentId]
	) REFERENCES [dbo].[tblDirectory] (
		[nDirKey]
	),
	CONSTRAINT [FK_tblDirectoryRelation_tblDirectory1] FOREIGN KEY 
	(
		[nDirChildId]
	) REFERENCES [dbo].[tblDirectory] (
		[nDirKey]
	)


alter table [dbo].[tblDirectoryRelation] nocheck constraint [FK_tblDirectoryRelation_tblAudit]


alter table [dbo].[tblDirectoryRelation] nocheck constraint [FK_tblDirectoryRelation_tblDirectory]


alter table [dbo].[tblDirectoryRelation] nocheck constraint [FK_tblDirectoryRelation_tblDirectory1]


ALTER TABLE [dbo].[tblCartDiscountGroupRelations] ADD 
	CONSTRAINT [FK_tblCartDiscountGroupRelations_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	),
	CONSTRAINT [FK_tblCartDiscountGroupRelations_tblCartDiscountRules] FOREIGN KEY 
	(
		[nDiscountId]
	) REFERENCES [dbo].[tblCartDiscountRules] (
		[nDiscountKey]
	),
	CONSTRAINT [FK_tblCartDiscountGroupRelations_tblDirectory] FOREIGN KEY 
	(
		[nDirId]
	) REFERENCES [dbo].[tblDirectory] (
		[nDirKey]
	)


ALTER TABLE [dbo].[tblCartItem] ADD 
	CONSTRAINT [FK_tblCartItem_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	),
	CONSTRAINT [FK_tblCartItem_tblCartOrder] FOREIGN KEY 
	(
		[nCartOrderId]
	) REFERENCES [dbo].[tblCartOrder] (
		[nCartOrderKey]
	)--,
	--CONSTRAINT [FK_tblCartItem_tblContent] FOREIGN KEY 
	--(
	--	[nItemId]
	--) REFERENCES [dbo].[tblContent] (
	--	[nContentKey]
	--)


ALTER TABLE [dbo].[tblCartShippingRelations] ADD 
	CONSTRAINT [FK_tblCartShippingRelations_tblAudit] FOREIGN KEY 
	(
		[nAuditId]
	) REFERENCES [dbo].[tblAudit] (
		[nAuditKey]
	),
	CONSTRAINT [FK_tblCartShippingRelations_tblCartShippingLocations] FOREIGN KEY 
	(
		[nShpLocId]
	) REFERENCES [dbo].[tblCartShippingLocations] (
		[nLocationKey]
	),
	CONSTRAINT [FK_tblCartShippingRelations_tblCartShippingMethods] FOREIGN KEY 
	(
		[nShpOptId]
	) REFERENCES [dbo].[tblCartShippingMethods] (
		[nShipOptKey]
	)


alter table [dbo].[tblCartShippingRelations] nocheck constraint [FK_tblCartShippingRelations_tblAudit]


alter table [dbo].[tblCartShippingRelations] nocheck constraint [FK_tblCartShippingRelations_tblCartShippingLocations]


alter table [dbo].[tblCartShippingRelations] nocheck constraint [FK_tblCartShippingRelations_tblCartShippingMethods]