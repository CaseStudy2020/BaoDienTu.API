USE [Online-Newspaper-DB]
GO
/****** Object:  StoredProcedure [dbo].[SP_createNewPost]    Script Date: 19/08/2020 5:31:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
ALTER PROCEDURE [dbo].[SP_createNewPost]
    @Title nvarchar(200)
    ,@Content nvarchar(max)
    ,@AuthorId nvarchar(450)
    ,@SubcategoryId int
    ,@Thumbnail NVARCHAR(max)
	,@CategoryId int
AS
DECLARE @Message nvarchar(50)
BEGIN
    BEGIN TRY
        IF( EXISTS( select 1 from dbo.AspNetUsers u where u.Id = @AuthorId)
            and EXISTS( select 1 from dbo.SubCategory sub where sub.SubCategoryId =@SubcategoryId))
        BEGIN
       
            INSERT INTO [dbo].[Post]
            ( 
            AuthorId,AverageRate,CategoryId,Content,DateCreated,IsDeleted,[Like],Link,PostHastagId,[Status],SubcategoryId,Thumbnail,Title,[View]
            )
            VALUES
            ( -- First row: values for the columns in the list above
            @AuthorId,0,@CategoryId,@Content,GETDATE(),0,0,'',null,0,@SubcategoryId,@Thumbnail,@Title,0
            )
            SET @Message = 'Create is completed'
        END
        ;
        ELSE
        BEGIN
            IF NOT EXISTS( select 1 from dbo.AspNetUsers u where u.Id = @AuthorId )
            SET @Message = 'Not found user'
            ;
            IF NOT EXISTS( select 1 from dbo.SubCategory sub where sub.SubCategoryId =@SubcategoryId)
            SET @Message = 'Not found subcategory'
        END

    END TRY
    BEGIN CATCH
        SET @Message = 'Some thing is wrong'
    END CATCH
END
SELECT @Message as [Message]
