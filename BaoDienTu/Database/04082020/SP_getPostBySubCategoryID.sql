-- Create a new stored procedure called 'SP_getPostBySubCategoryId' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_getListPostBySubCategoryId'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_getListPostBySubCategoryId

GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_getListPostBySubCategoryId
    @SubCategoryId int
-- add more stored procedure parameters here
AS
DECLARE @message nvarchar(100) = 'Not found'
BEGIN
    IF EXISTS ( select 1 from dbo.SubCategory s where s.SubCategoryId = @SubCategoryId)
    BEGIN 
        SET @message = 'Found'
        SELECT *, @message as [Message] FROM dbo.Post p WHERE p.SubcategoryId = @SubCategoryId
    END
    ;
    ELSE SELECT @message as [Message]
    ;
END

GO
-- example to execute the stored procedure we just created
EXECUTE dbo.SP_getPostBySubCategoryId 1
GO
