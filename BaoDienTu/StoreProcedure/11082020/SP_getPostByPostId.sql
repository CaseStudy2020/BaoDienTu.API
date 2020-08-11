-- Create a new stored procedure called 'SP_getPostByPostID' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_getPostByPostID'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_getPostByPostID
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_getPostByPostID
    @PostId int

-- add more stored procedure parameters here
AS
DECLARE @message nvarchar(50)
BEGIN
    IF EXISTS (SELECT * FROM dbo.Post p WHERE p.PostId = @PostID and p.IsDeleted = 0) 
        BEGIN
            SET @message = 'Success!'
            SELECT @message as messenger, p.PostId, p.Title,p.Content,p.[Like],p.Link,p.[Status],p.CategoryId,p.PostHastagId,p.AuthorId,p.SubcategoryId,p.[View],FORMAT(p.DateCreated,'hh:mm, dd-MM-yyyy') as CreatedDate, p.AverageRate,p.IsDeleted,p.Thumbnail
            FROM dbo.Post p  WHERE p.PostId = @PostId and p.IsDeleted = 0 
        END
    ;
    ELSE 
    BEGIN
        SET @message = 'Invalid'
        SELECT @message as messenger
    END
    ;
    
    
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.SP_getPostByPostID 12
GO

EXEC dbo.SP_getAllPost


