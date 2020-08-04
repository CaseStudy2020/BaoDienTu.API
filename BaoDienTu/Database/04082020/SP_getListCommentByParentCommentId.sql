
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_getListCommentByParentCommentId'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_getListCommentByParentCommentId
GO

CREATE PROCEDURE dbo.SP_getListCommentByParentCommentId
    @ParentCommentId int
AS
DECLARE @message NVARCHAR(100) = 'Not Found'
BEGIN
    IF EXISTS ( select 1 from dbo.Comment c where c.CommentId = @ParentCommentId)
    BEGIN
        SET @message = 'Found'
        SELECT *, @message as [Message] 
        FROM dbo.Comment c 
        WHERE (c.ParentCommentId = @ParentCommentId and c.isDeleted = 0 and c.[status] = 0 )
        ORDER BY c.DateCreated asc
    END
    ;
    ELSE
        SELECT @message as [Message]
    ;
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.SP_getListCommentByParentCommentId 12
GO


