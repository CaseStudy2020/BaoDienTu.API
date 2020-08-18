USE [Online-Newspaper-DB]
GO
/****** Object:  StoredProcedure [dbo].[SP_getAllSubCategory]    Script Date: 18/08/2020 8:14:09 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Huynh Thao Nguyen
-- Create date: 2020-07-29
-- Description:	get all Category
-- =============================================
ALTER PROCEDURE [dbo].[SP_getAllSubCategory]
   
AS
    
     SELECT s.SubCategoryId,
	s.SubCategoryName

	FROM SubCategory s
	WHERE s.IsDeleted=0