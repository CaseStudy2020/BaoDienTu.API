USE [baodientu]
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchContent]    Script Date: 8/17/2020 2:27:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_SearchContent]
	@keyword NVARCHAR(50)
AS 
BEGIN
SELECT [PostId]
      ,[Title]
      ,[Content]
      ,[DateCreated]         
      ,[Thumbnail]
  FROM [dbo].[Post]

WHERE Content LIKE '%'+@keyword+'%'

END