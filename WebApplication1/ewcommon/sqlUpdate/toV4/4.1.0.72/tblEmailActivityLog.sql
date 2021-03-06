CREATE TABLE [dbo].[tblEmailActivityLog] (
	[nEmailActivityKey] [int] IDENTITY (1, 1) NOT NULL ,
	[nUserDirId] [int] NULL ,
	[dDateTime] [datetime] NULL ,
	[cEmailRecipient] [nvarchar] (255)  NULL ,
	[cEmailSender] [nvarchar] (255)  NULL ,
	[cActivityDetail] [ntext]  NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


ALTER TABLE [dbo].[tblEmailActivityLog] WITH NOCHECK ADD 
	CONSTRAINT [PK_tblEmailActivityLog] PRIMARY KEY  CLUSTERED 
	(
		[nEmailActivityKey]
	)  ON [PRIMARY] 


