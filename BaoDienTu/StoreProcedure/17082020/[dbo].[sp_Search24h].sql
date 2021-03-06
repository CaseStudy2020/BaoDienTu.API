USE [baodientu]
GO
/****** Object:  StoredProcedure [dbo].[sp_Search24h]    Script Date: 8/17/2020 2:24:13 PM ******/
--Xuân Cường 17/8/2020
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_Search24h]
@keyword NVARCHAR(50)
AS 
BEGIN

SELECT p.[PostId]
      ,p.[Title]
      ,p.[Content]
      ,(SELECT p.DateCreated where p.DateCreated >= DATEADD(day, -1, GETDATE())) AS DateCreated
      ,[Thumbnail]
  FROM [dbo].[Post] p

WHERE  p.DateCreated  >= DATEADD(day, -1, GETDATE()) AND Title LIKE '%'+@keyword+'%'

END