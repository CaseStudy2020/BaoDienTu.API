-- Create a new stored procedure called 'SP_updateUser' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'SP_updateUser'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.SP_updateUser
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.SP_updateUser
    @UserId NVARCHAR(450),
    @FullName nvarchar(max),
    @Gender bit,
    @Dob DATETIME2(7),
    @Email NVARCHAR(256),
    @PhoneNumber NVARCHAR(max),
    @Address NVARCHAR(max),
    @Avatar NVARCHAR(max)
AS
DECLARE @message NVARCHAR(100)
BEGIN TRY
    
    IF EXISTS( select 1 from dbo.AspNetUsers u where u.Id = @UserId)
        BEGIN
            BEGIN TRANSACTION
            UPDATE dbo.AspNetUsers
            SET FullName = @FullName, 
                Gender = @Gender,
                DoB = @Dob,
                Email = @Email,
                PhoneNumber = @PhoneNumber,
                [Address] = @Address,
                Avatar = @Avatar
            WHERE Id = @UserId
            COMMIT TRANSACTION
            SET @message = 'Update complete'
        END
    ;
    ELSE SET @message='User is not valid'
END TRY
BEGIN CATCH
    ROLLBACK
    SET @message = 'Some thing is error'
END CATCH
SELECT @message as [Message]
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.SP_updateUser '46a2b053-d0be-4bd6-8949-af4fb95dccde',N'Tên sau khi chỉnh sửa',0,'2020-02-02','EmailSauKhiChinhSua@gmail.com','0900000000','AddressSauChinhSua','DayLaAvatar'
GO