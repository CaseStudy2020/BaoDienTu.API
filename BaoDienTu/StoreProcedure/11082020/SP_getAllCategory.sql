SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[SP_getAllCategory]
   
AS
    
    SELECT * FROM Category
GO
