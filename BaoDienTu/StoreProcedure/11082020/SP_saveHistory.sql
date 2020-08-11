-- Create a new stored procedure called 'saveHistory' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'saveHistory'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.saveHistory
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.saveHistory
    @UserId NVARCHAR(450),
    @PostId int
AS
DECLARE @message NVARCHAR(100)
BEGIN TRY
    BEGIN
        IF NOT EXISTS( select 1 from dbo.AspNetUsers u WHERE u.Id =@UserId)
        SET @message = 'Not valid User'
        ;
        IF NOT EXISTS( select 1 from dbo.Post p WHERE p.PostId = @PostId)
        SET @message = 'Not valid Post'
        ;
        IF ( EXISTS(select 1 from dbo.AspNetUsers u WHERE u.Id = @UserId)
        and EXISTS( select 1 from dbo.Post p where p.PostId = @PostId))
        BEGIN
            INSERT INTO [dbo].[History]
            ( 
                UserId,PostId,[Date]
            )
            VALUES
            ( 
                @UserId,@PostId,GETDATE()
            )
            SET @message = 'Done'
        END
    END
END TRY
BEGIN CATCH
    SET @message = 'Something error!'
END CATCH
SELECT @message as [Message]
GO
-- example to execute the stored procedure we just created
P