-- Create a new stored procedure called 'SP_editComment' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_editComment'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_editComment
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_editComment
    @CommentID int,
    @ContentComment NVARCHAR(max)

AS
DECLARE @message nvarchar(100) = 'Edit fail'
BEGIN
    IF EXISTS( SELECT 1 FROM dbo.Comment c WHERE c.CommentId = @CommentID)
        BEGIN
            
            UPDATE [dbo].[Comment]
            SET
                [ContentComment] = @ContentComment
                
            WHERE CommentId = @CommentID
            SET @message = 'Edit success'
        END
    ;
    ELSE SET @message ='Not found comment'
    ;
    SELECT @message as [Message]
END
    
GO
