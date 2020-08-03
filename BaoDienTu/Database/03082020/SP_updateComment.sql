-- Create a new stored procedure called 'SP_updateComment' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_updateComment'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_updateComment
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_updateComment
    @CommentId int,
    @PostId int,
    @UserId nvarchar(450),
    @ContentComment NVARCHAR(max)
AS
DECLARE @message nvarchar(max) = 'Update fail'
    BEGIN
        IF EXISTS (select 1 from dbo.Comment c where c.CommentId = @CommentId)
            BEGIN
                UPDATE [dbo].[Comment]
                SET
                    PostId = @PostId,
                    UserId = @UserId,
                    ContentComment = @ContentComment
                WHERE CommentId = @CommentId
                SET @message = 'Update complete'
            END
        ;
        ELSE
        SET @message = 'Not found Comment'
        ;
       
    END
    SELECT @message as [Message]
GO

-- example to execute the stored procedure we just created
EXECUTE dbo.SP_updateComment 1,1,1,'Comment sau khi sua'
GO

