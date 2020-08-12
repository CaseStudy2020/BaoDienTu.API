-- Create a new table called '[UserSaved]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[UserSaved]', 'U') IS NOT NULL
DROP TABLE [dbo].[UserSaved]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[UserSaved]
(
    UserId      NVARCHAR(450)    FOREIGN KEY REFERENCES dbo.AspNetUsers(Id),
    PostId      INT              FOREIGN KEY REFERENCES dbo.Post(PostId),
    [DateSave]  DATETIME2(7),
);
GO