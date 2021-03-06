CREATE TABLE [dbo].[tblCartDiscountRules] (
	[nDiscountKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nDiscountForeignRef] [nvarchar] (50)  NULL ,
	[cDiscountName] [nvarchar] (50)  NULL ,
	[cDiscountCode] [nvarchar] (50)  NULL ,
	[bDiscountIsPercent] [int] NULL ,
	[nDiscountCompoundBehaviour] [int] NULL ,
	[nDiscountValue] [char] (10)  NULL ,
	[nDiscountMinPrice] [nvarchar] (50)  NULL ,
	[nDiscountMinQuantity] [nvarchar] (50)  NULL ,
	[nDiscountCat] [int] NULL ,
	[cAdditionalXML] [ntext]  NULL ,
	[nAuditId] [int] NULL ,
	CONSTRAINT [PK_tblCartDiscountRules] PRIMARY KEY  CLUSTERED 
	(
		[nDiscountKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]



