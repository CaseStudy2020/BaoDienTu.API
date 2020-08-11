-- Create a new stored procedure called 'AddComment' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_AddComment'
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
IF @ParentCommentId = -1 SET @ParentCommentId = null
;

BEGIN

    BEGIN TRY
        IF  (EXISTS(select 1 from dbo.Post p where p.PostId = @PostId) and
            EXISTS(select 1 from dbo.[AspNetUsers] u where u.Id = @UserId)
            )
            BEGIN
                INSERT INTO [dbo].[Comment]
                ( 
                PostId,UserId,ContentComment,DateCreated,ParentCommentId
                )
                VALUES
                ( 
                @PostId,@UserId,@ContentComment,GETDATE(), @ParentCommentId
                )
                SET @message ='Add complete'
            END
            
        ;
        ELSE
            BEGIN
                IF NOT EXISTS(select 1 from dbo.Post p WHERE p.PostId = @PostId) SET @message = 'Post is not valid';
                IF NOT EXISTS (select 1 from dbo.[AspNetUsers] u where u.Id = @UserId ) SET @message ='User is not valid';
            END
        ;
    END TRY

    BEGIN CATCH
        SET @message = 'Some thing is wrong'
    END CATCH

END
SELECT @message as [Message] 
GO
-- example to execute the stored procedure we just created

EXECUTE dbo.SP_addComment 5,'56e3c62e-7dd2-4acf-a372-cda477c80326','content',-1
GO










