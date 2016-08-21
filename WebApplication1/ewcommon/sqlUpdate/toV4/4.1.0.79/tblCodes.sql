CREATE TABLE [dbo].[tblCodes] (
	[nCodeKey] [int] IDENTITY (1, 1) NOT NULL ,
	[cCodeName] [nvarchar] (50) NULL ,
	[nCodeType] [int] NULL ,
	[nCodeParentId] [int] NULL ,
	[cCodeGroups] [nvarchar] (50) NULL ,
	[cCode] [nvarchar] (255) NOT NULL ,
	[nUseId] [int] NULL ,
	[dUseDate] [datetime] NULL ,
	[nAuditId] [int] NULL 
) ON [PRIMARY]


