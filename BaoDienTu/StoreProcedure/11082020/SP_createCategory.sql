-- Create a new stored procedure called 'SP_createCategory' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_createCategory'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_createCategory
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_createCategory
    @CategoryName nvarchar(200)
AS
DECLARE @messenger nvarchar(200)
    
BEGIN
    IF EXISTS(select 1 from dbo.Category c WHERE c.CategoryName = @CategoryName )
        BEGIN
            SET @messenger = 'Already exist'
            SELECT *, @messenger as Messenger FROM dbo.Category c WHERE c.CategoryName=@CategoryName
        END
        
    ;
    ELSE
        BEGIN
            INSERT INTO dbo.Category(CategoryName)
            VALUES( @CategoryName)
            SET @messenger = 'Add success'
            SELECT *, @messenger as Messenger FROM dbo.Category c WHERE c.CategoryName=@CategoryName
        END
        
    ;
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.SP_createCategory 'Video'
EXECUTE dbo.SP_createCategory 'Thời sự'
EXECUTE dbo.SP_createCategory 'Tôi viết'
EXECUTE dbo.SP_createCategory 'Thể thao'
EXECUTE dbo.SP_createCategory 'Đời sống'
EXECUTE dbo.SP_createCategory 'Tài chính'
EXECUTE dbo.SP_createCategory 'Vanhoa the thao'
EXECUTE dbo.SP_createCategory 'Giới trẻ'
GO