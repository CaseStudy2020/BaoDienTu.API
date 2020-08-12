SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Huynh Thao Nguyen
-- Create date: 2020-07-29
-- Description:	get top 10 most  view of day 
-- =============================================
CREATE PROCEDURE [dbo].[SP_getTop10MostViewOfDay]
	
AS
BEGIN
	SELECT TOP 10 *
	from Post p
	where p.DateCreated = GETDATE() and p.IsDeleted = 0
	order by p.[View]
END
GO
