-- Create a new stored procedure called 'SP_getALlHistory' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_getAllHistory'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_getAllHistory
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_getAllHistory
    @UserId NVARCHAR(450)
AS
DECLARE @message NVARCHAR(100)
IF ( EXISTS( select 1 from dbo.AspNetUsers u where u.Id = @UserId)
    and EXISTS( select 1 from dbo.History h where h.UserId = @UserId))
    BEGIN
        SET @message = 'Success'
        SELECT @message as [Message], p.PostId, p.DateCreated, p.Title,p.Thumbnail,p.[Like],p.Link,p.[View]
        FROM dbo.History h INNER JOIN dbo.Post p ON h.PostId = p.PostId 
        ORDER BY p.DateCreated
    END
;
ELSE
BEGIN
    IF NOT EXISTS ( select 1 from dbo.AspNetUsers u where u.Id = @UserId)
    SET @message ='User is not valid'
    ;
    ELSE
    SET @message ='History is emply'
    ;
    SELECT @message as [Message]
END
    
;
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.SP_getALlHistory '46a2b053-d0be-4bd6-8949-af4fb95dccde'
GO