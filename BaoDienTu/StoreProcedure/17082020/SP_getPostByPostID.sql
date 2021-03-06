USE [Online-Newspaper-DB]
GO
/****** Object:  StoredProcedure [dbo].[SP_getPostByPostID]    Script Date: 8/17/2020 4:14:55 PM ******/
--Author: Le Quang Vu
--Date: 08/17/2020
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
ALTER PROCEDURE [dbo].[SP_getPostByPostID]
    @PostId int
-- add more stored procedure parameters here
AS
DECLARE @message nvarchar(50)
BEGIN
    IF EXISTS (SELECT * FROM dbo.Post p WHERE p.PostId = @PostID and p.IsDeleted = 0) 
        BEGIN
            SET @message = 'Success!'
            SELECT @message as [Message], p.PostId, p.Title,p.Content,p.[Like],p.Link,p.[Status],p.PostHastagId,p.AuthorId,p.SubcategoryId,p.[View],FORMAT(p.DateCreated,'hh:mm, dd-MM-yyyy') as DateCreated, p.AverageRate,p.IsDeleted,p.Thumbnail,p.CategoryId,(SELECT COUNT( c.ContentComment) 
		FROM dbo.Comment c
		where c.PostId = p.PostId) as NumberOfComment
            FROM dbo.Post p  WHERE p.PostId = @PostId and p.IsDeleted = 0 
        END
    ;
    ELSE 
    BEGIN
        SET @message = 'Invalid'
        SELECT @message as [Message]
    END
    ;
    
    
END
