-- Create a new stored procedure called 'SP_createNewPost' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_createNewPost'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_createNewPost
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_createNewPost
    @Title nvarchar(200)
    ,@Content nvarchar(max)
    ,@AuthorId nvarchar(450)
    ,@SubcategoryId int
    ,@Thumbnail NVARCHAR(max)
AS
DECLARE @Message nvarchar(50)
BEGIN
    BEGIN TRY
        IF( EXISTS( select 1 from dbo.AspNetUsers u where u.Id = @AuthorId)
            and EXISTS( select 1 from dbo.SubCategory sub where sub.SubCategoryId =@SubcategoryId))
        BEGIN
       
            INSERT INTO [dbo].[Post]
            ( 
            AuthorId,AverageRate,Content,DateCreated,IsDeleted,[Like],Link,PostHastagId,[Status],SubcategoryId,Thumbnail,Title,[View]
            )
            VALUES
            ( -- First row: values for the columns in the list above
            @AuthorId,0,@Content,GETDATE(),0,0,'',null,0,@SubcategoryId,@Thumbnail,@Title,0
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
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.SP_createNewPost 'title','content',1,1,'thumbnail'
GO