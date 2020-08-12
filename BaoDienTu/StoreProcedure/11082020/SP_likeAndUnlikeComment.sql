-- Create a new stored procedure called 'SP_likeAndUnlikeComment' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_likeAndUnlikeComment'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_likeAndUnlikeComment
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_likeAndUnlikeComment
    @CommentId int,
    @UserId nvarchar(450)
AS
DECLARE @message NVARCHAR(200)
BEGIN
    BEGIN TRY
       IF (EXISTS ( select 1 from dbo.AspNetUsers u where u.Id = @UserId)
            and EXISTS(select 1 from dbo.Comment c where c.CommentId = @CommentId) )
        BEGIN
            IF exists (select 1 from dbo.LikeHistory lh where lh.CommentId = @CommentId and lh.UserId = @UserId and lh.isLike = 1)
            BEGIN
                
                UPDATE [dbo].[LikeHistory]
                SET
                    isLike = 0
                WHERE UserId = @UserId and CommentId = @CommentId
                SET @message = 'Unlike'
            END
            ;
            ELSE
                BEGIN
                    -- Insert rows into table 'LikeHistory' in schema '[dbo]'
                    INSERT INTO [dbo].[LikeHistory]
                    ( -- Columns to insert data into
                    CommentId,UserId,isLike
                    )
                    VALUES
                    ( -- First row: values for the columns in the list above
                    @CommentId,@UserId,0
                    )
                    SET @message ='Like'
                END
            ;
        END
       ;
       ELSE
            BEGIN
                IF NOT EXISTS( select 1 from dbo.AspNetUsers u where u.Id = @UserId) SET @message = 'User not found';
                IF NOT EXISTS(select 1 from dbo.Comment c where c.CommentId = @CommentId) SET @message = 'Comment not found'
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
EXECUTE dbo.SP_likeAndUnlikeComment 1,1
GO