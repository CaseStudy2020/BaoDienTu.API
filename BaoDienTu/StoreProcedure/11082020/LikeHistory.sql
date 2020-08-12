-- Create a new table called '[LikeHistory]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[LikeHistory]', 'U') IS NOT NULL
DROP TABLE [dbo].[LikeHistory]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[LikeHistory]
(
    [LikeHistoryId] INT NOT NULL PRIMARY KEY, -- Primary Key column
    CommentId       int FOREIGN key REFERENCES dbo.Comment(CommentId),
    UserId          int FOREIGN key REFERENCES dbo.[User](UserId),
    isLike          bit DEFAULT 0
    -- Specify more columns here
);
GO
