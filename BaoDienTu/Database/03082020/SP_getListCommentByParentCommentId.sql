
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'getListComment'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_getListCommentByParentCommentId
GO

CREATE PROCEDURE dbo.SP_getListCommentByParentCommentId
    @ParentCommentId int
AS
    SELECT * FROM dbo.Comment c WHERE c.ParentCommentId = @ParentCommentId and c.isDelete = 0
GO

-- example to execute the stored procedure we just created
EXECUTE dbo.SP_getListCommentByParentCommentId 1
GO


