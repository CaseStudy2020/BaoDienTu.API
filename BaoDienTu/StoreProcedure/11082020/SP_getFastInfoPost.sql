SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_getFastInfoPost]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT p.Thumbnail, p.PostId, p.Title,
			FORMAT(p.DateCreated,'hh:mm, dd-MM-yyyy') as DateCreated,
	 		(SELECT COUNT( c.ContentComment) 
			FROM dbo.Comment c
			where c.PostId = p.PostId) as NumberOfComment
	FROM dbo.Post p
    WHERE p.IsDeleted = 0
	ORDER BY p.DateCreated desc
    
	
END
GO
drop PROCEDURE [dbo].[SP_getFastInfoPost]

exec SP_getFastInfoPost