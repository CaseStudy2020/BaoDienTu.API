SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_softDelete] 
	@PostId int
AS
DECLARE @message nvarchar(50)
SET @message = 'Invalid!'
BEGIN
	BEGIN TRY
		UPDATE dbo.Post
		SET IsDeleted = 1
		WHERE PostId = @PostId
		SET @message = 'Done!'
	END TRY
	BEGIN CATCH
		SET @message = 'Error!'
	END CATCH

	Select @PostId as PostId, @message as Message
END
GO
