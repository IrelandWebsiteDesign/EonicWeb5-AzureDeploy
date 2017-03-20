CREATE TABLE [dbo].[tblCartCatProductRelations] (
	[nCatProductRelKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nContentId] [int] NOT NULL ,
	[nCatId] [int] NOT NULL ,
	[nAuditId] [int] NULL ,
	CONSTRAINT [PK_tblCartCatProductRelations] PRIMARY KEY  CLUSTERED 
	(
		[nCatProductRelKey]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
) ON [PRIMARY]



