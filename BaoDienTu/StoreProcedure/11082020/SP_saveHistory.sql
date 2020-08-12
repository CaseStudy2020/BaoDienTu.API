-- Create a new stored procedure called 'saveHistory' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_saveHistory'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_saveHistory
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_saveHistory
    @UserId NVARCHAR(450),
    @PostId int
AS
DECLARE @message NVARCHAR(100)
BEGIN TRY
    BEGIN
        IF NOT EXISTS( select 1 from dbo.AspNetUsers u WHERE u.Id =@UserId and u.IsDeleted =1)
        SET @message = 'Not valid User'
        ;
        IF NOT EXISTS( select 1 from dbo.Post p WHERE p.PostId = @PostId and p.IsDeleted = 1)
        SET @message = 'Not valid Post'
        ;
        IF ( EXISTS(select 1 from dbo.AspNetUsers u WHERE u.Id = @UserId and u.IsDeleted = 0)
        and EXISTS( select 1 from dbo.Post p where p.PostId = @PostId and p.IsDeleted =0)
        and EXISTS(select 1 from dbo.History h where h.PostId = @PostId and h.UserId = @UserId ))
        BEGIN
            UPDATE dbo.History
            SET [Date] = GETDATE()
            SET @message = 'Update comleted'
        END
        ;
        IF ( EXISTS(select 1 from dbo.AspNetUsers u WHERE u.Id = @UserId and u.IsDeleted =0 )
        and EXISTS( select 1 from dbo.Post p where p.PostId = @PostId and p.IsDeleted =0)
        and NOT EXISTS(select 1 from dbo.History h where h.PostId = @PostId and h.UserId = @UserId ))
        BEGIN
            INSERT INTO [dbo].[History]
            ( 
                UserId,PostId,[Date]
            )
            VALUES
            ( 
                @UserId,@PostId,GETDATE()
            )
            SET @message = 'Add completed'
        END
        

    END
END TRY
BEGIN CATCH
    SET @message = 'Something error!'
END CATCH
SELECT @message as [Message]
GO
-- example to execute the stored procedure we just created
exec SP_saveHistory '46a2b053-d0be-4bd6-8949-af4fb95dccde',16