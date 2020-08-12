-- Create a new stored procedure called 'SP_getUserByUserId' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_getUserByUserId'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_getUserByUserId
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_getUserByUserId
   @UserId NVARCHAR(450)
AS
DECLARE @message NVARCHAR(100)
IF EXISTS ( select 1 from dbo.AspNetUsers u WHERE u.Id = @UserId and u.IsDeleted = 0)
    BEGIN
        SELECT Id,UserName,Email,PhoneNumber,Gender,DoB,Avatar,[Address],FullName
        FROM dbo.AspNetUsers u 
        WHERE u.Id = @UserId
        SET @message = 'Done'
    END
;
ELSE
    BEGIN
        SET @message = 'Not found user'
        SELECT @message as [Message]
    END
;
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.SP_getUserByUserId '46a2b053-d0be-4bd6-8949-af4fb95dccde'
GO