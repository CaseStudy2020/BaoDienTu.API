SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 alter PROCEDURE [dbo].[SP_getAllPost]
     
  AS
      -- body of the stored procedure
      
      SELECT *
      From [Online-Newspaper-Database].[dbo].[Post] p
      WHERE p.IsDeleted = 0
	  order by p.DateCreated desc
GO
