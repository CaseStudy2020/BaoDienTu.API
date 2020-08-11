-- Create a new stored procedure called 'SP_softDeleteSubCategoryById' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_softDeleteSubCategoryById'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_softDeleteSubCategoryById
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_softDeleteSubCategoryById
    @SubCategoryId int
AS
DECLARE @messenger nvarchar(200) = 'Soft delete  is fail'
BEGIN
    IF EXISTS (select 1 from dbo.SubCategory c WHERE c.SubCategoryId = @SubCategoryId )
        BEGIN
            UPDATE dbo.SubCategory SET isDeleted = 1 where SubCategoryId = @SubCategoryId
            SET @messenger = 'Soft Delete is completed'
            SELECT *, @messenger as [Message] FROM dbo.SubCategory c WHERE c.SubCategoryId = @SubCategoryId 
        END
    ;
    ELSE
    BEGIN
        SELECT @messenger as [Message] 
    END
    ;
END


alter TABLE dbo.SubCategory
add isDelete bit DEFAULT 0

exec dbo.SP_softDeleteSubCategoryById 1
exec dbo.SP_getSubcategoryByCategoryId 1

SELECT TOP (1000) [SubCategoryId]
      ,[SubCategoryName]
      ,[CategoryId]
      ,[isDeleted]
  FROM [Online-Newspaper-DB].[dbo].[SubCategory]