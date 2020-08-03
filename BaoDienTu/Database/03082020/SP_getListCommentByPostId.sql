-- Create a new stored procedure called 'SP_getListCommentByPostId' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_getListCommentByPostId'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_getListCommentByPostId
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_getListCommentByPostId
    @PostId int
AS
    -- body of the stored procedure
    SELECT * FROM dbo.Comment c WHERE c.PostId = @PostId ORDER BY c.DateCreated
GO
-- example to execute the stored procedure we just created



