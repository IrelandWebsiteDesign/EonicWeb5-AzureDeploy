

CREATE TABLE [dbo].[tblContentVersions] (
	[nContentVersionKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nContentPrimaryId] [int] NOT NULL ,
	[nVersion] [int] NULL ,
	[cContentForiegnRef] [nvarchar] (255)  NULL ,
	[cContentName] [nvarchar] (800)  NULL ,
	[cContentSchemaName] [nvarchar] (50)  NULL ,
	[cContentXmlBrief] [ntext]  NULL ,
	[cContentXmlDetail] [ntext]  NULL ,
	[nAuditId] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


ALTER TABLE [dbo].[tblContentVersions] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblContentVersions] PRIMARY KEY  CLUSTERED 
	(
		[nContentVersionKey]
	)  ON [PRIMARY] 


 CREATE  INDEX [IX_Version] ON [dbo].[tblContentVersions]([nVersion]) ON [PRIMARY]


 CREATE  INDEX [IX_PrimaryId] ON [dbo].[tblContentVersions]([nContentPrimaryId]) ON [PRIMARY]


