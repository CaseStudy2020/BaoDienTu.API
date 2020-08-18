USE [baodientu]
GO
----Thay đổi nhẹ ORDER BY DESC Đinh Xuân Cường
/****** Object:  StoredProcedure [dbo].[sp_Search24h]    Script Date: 8/18/2020 8:57:21 PM ******/
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


WHERE p.DateCreated  >= DATEADD(day, -1, GETDATE()) AND Title LIKE '%'+@keyword+'%'
  ORDER BY  p.DateCreated DESC

END
GO

