-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_CreateUpdateUser
	-- Add the parameters for the stored procedure here
	@UserId int,
	@UserName varchar(50),
	@EmailId varchar(50),
	@Phone varchar(10),
	@Address varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- Insert	 >>  <-1
	-- Update	 >>  >0

	--New Record insert
	if @UserId<1
		Insert into	Users(UserName, EmailId, Phone, Address )	
		values (@UserName,@EmailId,@Phone,@Address);

	--Update Record
	if(@UserId>0)
		Update Users 
		set UserName=@UserName, EmailId=@EmailId, Phone=@Phone, Address=@Address
		where UserId=@UserId;

END
GO
