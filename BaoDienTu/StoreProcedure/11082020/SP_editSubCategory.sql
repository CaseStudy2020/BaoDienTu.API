-- Create a new stored procedure called 'SP_editSubCategory' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_editSubCategory'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_editSubCategory
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_editSubCategory
    @CategoryId int, 
    @SubCategoryId int,
    @SubCategoryName nvarchar(200)
AS
DECLARE @messenger nvarchar(200) = 'Edit fail'
BEGIN
    IF EXISTS(select 1 from dbo.Category c WHERE c.CategoryId = @CategoryId)
        BEGIN
            IF EXISTS( select 1 FROM dbo.SubCategory s WHERE s.SubCategoryId = @SubCategoryId)
            BEGIN
                UPDATE dbo.SubCategory
                SET CategoryId = @CategoryId, SubCategoryName = @SubCategoryName
                WHERE SubCategoryId = @SubCategoryId

                SET @messenger = 'Edit success'
                SELECT *, @messenger as Messenger FROM dbo.SubCategory s WHERE s.SubCategoryId = @SubCategoryId
            END
        END
        
    ;
    ELSE
        BEGIN
        SET @messenger = 'Edit fail'
         SELECT @messenger as [Message], @CategoryId as CategoryId, @SubCategoryId as SubcategoryId, @SubCategoryName as SubcategoryName
        END
    ;

END
GO

-- example to execute the stored procedure we just created

exec dbo.SP_getSubcategoryByCategoryId 1

exec dbo.SP_editSubCategory 1,3, N'Subcate sau khi sua'