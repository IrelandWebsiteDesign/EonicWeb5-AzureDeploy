CREATE NONCLUSTERED INDEX [_dta_index_tblContentRelation_121_261575970__K2_K4_3_6] ON [dbo].[tblContentRelation] 
(
	[nContentParentId] ASC,
	[nDisplayOrder] ASC
)
INCLUDE ( [nContentChildId],
[cRelationType]) WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]

CREATE STATISTICS [_dta_stat_261575970_2_3_4] ON [dbo].[tblContentRelation]([nContentParentId], [nContentChildId], [nDisplayOrder])

CREATE NONCLUSTERED INDEX [_dta_index_tblContent_121_229575856__K6] ON [dbo].[tblContent] 
(
	[cContentSchemaName] ASC
)WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]


