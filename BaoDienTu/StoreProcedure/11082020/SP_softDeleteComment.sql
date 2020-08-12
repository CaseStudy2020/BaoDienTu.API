-- Create a new stored procedure called 'SP_softDeleteComment' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_softDeleteComment'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_softDeleteComment
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_softDeleteComment
    @CommentId int
AS
DECLARE @message nvarchar(200) = 'Soft Delete is fail'
BEGIN
    IF  EXISTS ( select 1 from dbo.Comment c where c.CommentId = @CommentId and c.isDelete = 0)
        BEGIN
            UPDATE [dbo].[Comment]
            SET isDelete = 1
            WHERE CommentId = @CommentId ;
            SET @message = 'Soft Delete Complete'
        END
    ;
    ELSE 
        BEGIN
            IF EXISTS (SELECT 1 from dbo.Comment c where c.CommentId=@CommentId and c.isDelete = 1)
            SET @message = 'This comment have been soft deleted before';
            ELSE SET @message = 'Not found comment';
        END
    ;

END
    SELECT @message as [Message]
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.SP_softDeleteComment 2
GO