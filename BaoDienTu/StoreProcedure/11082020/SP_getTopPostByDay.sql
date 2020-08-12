-- Create a new stored procedure called 'SP_getTopPostByDay' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_getTopPostByDay'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_getTopPostByDay
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_getTopPostByDay
    @DateToGet DATETIME,
    @NumberOfPost int
AS
BEGIN
    SELECT p.Thumbnail, p.PostId, p.Title,FORMAT(p.DateCreated,'hh:mm, dd-MM-yyyy') as DateCreated, (SELECT COUNT( c.ContentComment) 
		FROM dbo.Comment c
		where c.PostId = p.PostId) as NumberOfComment
	FROM dbo.Post p
	where CONVERT(DATE,p.DateCreated) = CONVERT(DATE, @DateToGet) and p.IsDeleted = 0
	order by p.[View] DESC
END
GO

-- example to execute the stored procedure we just created
EXECUTE dbo.SP_getTopPostByDay '2020-08-03 ',2
GO







