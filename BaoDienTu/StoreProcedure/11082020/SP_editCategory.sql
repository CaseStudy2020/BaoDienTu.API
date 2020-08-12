-- Create a new stored procedure called 'SP_editeCategory' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_editCategory'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_editCategory
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_editCategory
   @CategoryId int,
   @CategoryName nvarchar(200)
AS
DECLARE @messgenger nvarchar(200)
BEGIN
    IF EXISTS(SELECT 1 FROM dbo.Category c WHERE c.CategoryId = @CategoryID )
        BEGIN
            UPDATE dbo.Category
            SET
                CategoryName = @CategoryName
            WHERE CategoryId = @CategoryId
            SET @messgenger = 'Edit success'
            SELECT *, @messgenger as Messenger FROM dbo.Category c WHERE c.CategoryId = @CategoryId
        END
    ;
    ELSE
        BEGIN
            SET @messgenger = ' Not Found'
            SELECT TOP(1) @CategoryId as CategoryId,@CategoryName as CategoryName, @messgenger as Messenger FROM dbo.Category
        END
    ;
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.SP_editCategory 99, N'Đời sống'
GO

EXEC dbo.SP_getAllCategory