

-- Create a new stored procedure called 'SP_getSubcategoryByCategoryId' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_getSubcategoryByCategoryId'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_getSubcategoryByCategoryId
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_getSubcategoryByCategoryId
    @CategoryId int

AS
DECLARE @message nvarchar(125) = 'Not found'
BEGIN
    IF EXISTS(SELECT * FROM dbo.Category c INNER JOIN dbo.SubCategory s on c.CategoryId = s.CategoryId where c.CategoryId = @CategoryId)
        BEGIN
            SET @message = 'Found'
            select * from dbo.SubCategory s WHERE s.CategoryId = @CategoryId
        END
    ;
    ELSE
        SELECT @message as [Message]
    ;
    
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.SP_getSubcategoryByCategoryId 13
GO
