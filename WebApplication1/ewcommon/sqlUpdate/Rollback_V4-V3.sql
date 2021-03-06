if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_ewm_Structure_tbl_ewm_template]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_ewm_structure] DROP CONSTRAINT FK_tbl_ewm_Structure_tbl_ewm_template


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblActivityLog]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblActivityLog]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblAudit]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblAudit]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartCatProductRelations]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartCatProductRelations]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartContact]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartContact]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartDiscountGroupRelations]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartDiscountGroupRelations]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartDiscountRules]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartDiscountRules]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartItem]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartItem]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartOrder]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartOrder]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartPaymentMethod]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartPaymentMethod]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartProductCategories]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartProductCategories]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartShippingLocations]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartShippingLocations]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartShippingMethods]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartShippingMethods]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartShippingRelations]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartShippingRelations]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblContent]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblContent]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblContentLocation]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblContentLocation]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblContentRelation]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblContentRelation]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblContentStructure]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblContentStructure]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblDirectory]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblDirectory]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblDirectoryPermission]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblDirectoryPermission]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblDirectoryRelation]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblDirectoryRelation]


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblLookup]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblLookup]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartDiscountDirRelations]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartDiscountDirRelations]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartDiscountProdCatRelations]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartDiscountProdCatRelations]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblDirectorySubscriptions]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblDirectorySubscriptions]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblOptOutAddresses]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblOptOutAddresses]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCodes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCodes]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fxn_CSVTableINTEGERS]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fxn_CSVTableINTEGERS]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fxn_CSVTableSTRINGS]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fxn_CSVTableSTRINGS]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fxn_GetActivityDetail]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fxn_GetActivityDetail]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fxn_SessionUserTable]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fxn_SessionUserTable]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fxn_SessionsInDateRange]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fxn_SessionsInDateRange]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fxn_SessionsLength]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fxn_SessionsLength]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fxn_SessionsStart]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fxn_SessionsStart]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fxn_SessionsUser]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fxn_SessionsUser]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetSessionActivity]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetSessionActivity]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spPurchasersLast2Years]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spPurchasersLast2Years]