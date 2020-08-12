-- Create a new stored procedure called 'SP_softDeleteCategoryById' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_softDeleteCategoryById'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_softDeleteCategoryById
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_softDeleteCategoryById
    @CategoryId int
AS
DECLARE @messenger nvarchar(200) = 'Soft delete  is fail'
BEGIN
    IF EXISTS (select 1 from dbo.Category c WHERE c.CategoryId = @CategoryId )
        BEGIN
            UPDATE dbo.Category SET isDeleted = 1 where CategoryId = @CategoryId
            SET @messenger = 'Soft Delete is completed'
            SELECT *, @messenger as [Message] FROM dbo.Category c WHERE c.CategoryId = @CategoryId 
        END
    ;
    ELSE
    BEGIN
        SELECT @messenger as [Message] 
    END
    ;
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.SP_softDeleteCategoryById 1
GO

exec dbo.SP_getAllCategory

