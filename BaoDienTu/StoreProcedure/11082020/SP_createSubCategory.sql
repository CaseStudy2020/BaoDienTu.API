-- Create a new stored procedure called 'SP_createSubCategory' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_createSubCategory'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_createSubCategory
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_createSubCategory
    @CategoryId int,
    @SubCategoryName nvarchar(200)
AS
DECLARE @messenger NVARCHAR(200)
    IF EXISTS( SELECT 1 FROM dbo.SubCategory s WHERE s.SubCategoryName = @SubCategoryName)
        BEGIN
            SET @messenger = 'Already Exists'
            SELECT *, @messenger as Messenger FROM dbo.SubCategory s WHERE s.SubCategoryName = @SubCategoryName
        END
    ;
    ELSE
        BEGIN
            
            INSERT INTO dbo.SubCategory
            ( 
             CategoryId, SubCategoryName
            )
            VALUES
            ( -- First row: values for the columns in the list above
             @CategoryId, @SubCategoryName
            )
            SET @messenger = 'Add Success'
            SELECT *, @messenger as Messenger FROM dbo.SubCategory s WHERE s.SubCategoryName = @SubCategoryName
            
        END
    ;
GO


exec SP_getAllCategory

exec SP_createSubCategory 1, 'Chính trị'
exec SP_createSubCategory 1, 'Pháp luật'
exec SP_createSubCategory 1, 'Dân sinh'
exec SP_createSubCategory 1, 'Quyền được biết'