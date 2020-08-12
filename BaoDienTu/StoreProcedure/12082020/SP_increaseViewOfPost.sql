-- Create a new stored procedure called 'SP_increaseViewOfPost' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_increaseViewOfPost'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_increaseViewOfPost
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_increaseViewOfPost
    @PostId int
AS
DECLARE @message NVARCHAR(100)
BEGIN TRY
    BEGIN TRANSACTION
    UPDATE dbo.Post
    SET [View] = [View] +1
    WHERE PostId = @PostId
    SET @message ='Success'
    COMMIT TRANSACTION
END TRY
BEGIN CATCH
    ROLLBACK
    SET @message = 'Error'
END CATCH
SELECT @message as [Message]
GO
-- example to execute the stored procedure we just created

EXECUTE dbo.SP_increaseViewOfPost 13
GO