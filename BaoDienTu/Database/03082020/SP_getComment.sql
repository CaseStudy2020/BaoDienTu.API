-- Create a new stored procedure called 'getComment' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'getComment'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.getComment
GO

CREATE PROCEDURE dbo.getComment
    @CommentId int
AS
    -- body of the stored procedure
    SELECT * FROM dbo.Comment c WHERE c.CommentId = @CommentId and c.isDelete = 0
GO

-- 
-- example to execute the stored procedure we just created
EXECUTE dbo.getComment 2
GO