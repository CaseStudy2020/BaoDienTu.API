USE [baodientu]
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchTitle]    Script Date: 8/17/2020 2:24:28 PM ******/
--Xuân Cường Search Title
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_SearchTitle]
	@keyword NVARCHAR(50)
AS 
BEGIN
SELECT [PostId]
      ,[Title]
      ,[Content]
      ,[DateCreated]         
      ,[Thumbnail]
  FROM [dbo].[Post]

WHERE Title LIKE '%'+@keyword+'%'

END