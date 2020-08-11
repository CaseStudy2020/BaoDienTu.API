SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
Create PROCEDURE [dbo].[SP_updatePost]
    @PostId int,
	@Title nvarchar(200),
	@Content nvarchar(max) ,
	@Like int ,
	@Link varchar(200) ,
	@Status int ,
	@CategoryId int ,
	@PostHastagId int ,
	@AuthorId int ,
	@SubcategoryId int ,
	@View int ,
	@AverageRate decimal(18,0) ,
	@IsDeleted bit 
-- add more stored procedure parameters here


AS
DECLARE @Message NVARCHAR(50) ='Fail'

BEGIN
    BEGIN TRY
        UPDATE dbo.Post 
        SET 
            Title = @Title,
            Content = @Content,
            [Like] = @Like,
            Link =@Link,
            [Status] = @Status,
            CategoryId = @CategoryId,
            PostHastagId = @PostHastagId,
            AuthorId = @AuthorId,
            SubcategoryId = @SubcategoryId,
            [View]=@View,
            DateCreated = GETDATE(),
            AverageRate=@AverageRate,
            IsDeleted = @IsDeleted
        WHERE PostId = @PostId
        SET @Message = 'Done'
    END TRY
    BEGIN CATCH
        SET @Message ='Error'
    END CATCH
    
    
    select @PostId as PostId, @Message as Messenger
END
GO


exec SP_getAllPost