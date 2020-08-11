-- Create a new table called '[LikePostHistory]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[LikePostHistory]', 'U') IS NOT NULL
DROP TABLE [dbo].[LikePostHistory]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[LikePostHistory]
(
    [LikePostHistoryId] INT NOT NULL PRIMARY KEY identity(1,1),
    [AspNetUserId] NVARCHAR(450)    FOREIGN key REFERENCES dbo.AspNetUsers(Id),
    [PostId]            int         FOREIGN key REFERENCES dbo.Post(PostId)   ,
    isLike              bit DEFAULT 0
);
GO