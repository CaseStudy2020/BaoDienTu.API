 -- Create a new stored procedure called 'SP_likeAndUnlikePost' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_likeAndUnlikePost'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_likeAndUnlikePost
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_likeAndUnlikePost
    @AspNetUSerId NVARCHAR(450),
    @PostId int
AS
DECLARE @message nvarchar(100) = 'Something is wrong'
BEGIN
    IF ( EXISTS(select 1 from dbo.AspNetUsers u WHERE u.Id = @AspNetUSerId) 
        AND EXISTS( select 1 from dbo.Post p WHERE p.PostId = @PostId) )
        BEGIN
            IF EXISTS( select 1 from dbo.LikePostHistory lh WHERE (lh.PostId = @PostId and lh.AspNetUserId = @AspNetUSerId and lh.isLike = 1 ) )
                BEGIN
                    -- Update rows in table '[LikePostHistory]' in schema '[dbo]'
                    UPDATE [dbo].[LikePostHistory]
                    SET
                        isLike = 0
                        
                    WHERE PostId = @PostId and AspNetUserId = @AspNetUSerId
                    SET @message = 'Unlike'
                END
            ;
            ELSE
                BEGIN
                    -- Insert rows into table 'LikePostHistory' in schema '[dbo]'
                    INSERT INTO [dbo].[LikePostHistory]
                    ( 
                    AspNetUserId,PostId,isLike
                    )
                    VALUES
                    (
                    @AspNetUSerId,@PostId,0
                    )
                    SET @message = 'like'
                    
                END
            ;
        END
 
    ;   
    ELSE
        BEGIN
            IF NOT EXISTS(select 1 from dbo.AspNetUsers u WHERE u.Id = @AspNetUSerId)
            SET @message = 'Not found User'
            ;
            IF NOT EXISTS( select 1 from dbo.Post p WHERE p.PostId = @PostId)
            SET @message = 'Not found Post'
            ;
        END
    ; 
END
SELECT @message as [Message]
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.SP_likeAndUnlikePost '56e3c62e-7dd2-4acf-a372-cda477c80326',2
GO