-- Create a new stored procedure called 'AddComment' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'AddComment'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_addComment
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_addComment
    @PostId int,
    @UserId nvarchar(450),
    @ContentComment nvarchar(max),
    @ParentCommentId int
AS
DECLARE @message nvarchar(50)= 'Add fail'
BEGIN
    IF NOT EXISTS(select 1 from dbo.Post p WHERE p.PostId = @PostId) SET @message = 'Post is not valid';
    IF NOT EXISTS (select 1 from dbo.[User] u where u.UserId = @UserId ) SET @message ='User is not valid';
    
    IF  (EXISTS(select 1 from dbo.post p where p.PostId = @PostId) and
        EXISTS(select 1 from dbo.[User] u where u.UserId = @UserId)
        )
        BEGIN
             INSERT INTO [dbo].[Comment]
            ( 
            PostId,UserId,ContentComment,DateCreated,ParentCommentId
            )
            VALUES
            ( 
            @PostId,@UserId,@ContentComment,GETDATE(),@ParentCommentId
            )
            SET @message ='Add complete'
        END
    
       
    ;
    
    SELECT @message as [Message] 
    
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.SP_addComment 3,3,'comment2',null
GO
EXECUTE dbo.SP_addComment 3,3,'comment2',null
GO










