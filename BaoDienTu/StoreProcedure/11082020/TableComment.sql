-- Create a new table called '[Comment]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Comment]', 'U') IS NOT NULL
DROP TABLE [dbo].[Comment]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Comment]
(
    [CommentId]         INT             NOT NULL    PRIMARY KEY identity(1,1), -- Primary Key column
    PostId              int             not null,
    UserId              int             not null,
    ContentComment      NVARCHAR(max)   not null,
    DateCreated         DATETIME        not null,
    ParentCommentId     int                         FOREIGN key REFERENCES dbo.Comment (CommentId),
    isDelete            bit            DEFAULT 0,
    status              int             DEFAULT 0

);
GO

