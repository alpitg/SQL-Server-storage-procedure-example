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
ALter PROCEDURE spUpdateInsertTransactionStudent
	-- Add the parameters for the stored procedure here


@StudId int,
@StudName varchar(50),
@StudEmail varchar(50),
@StudContact nchar(12),
@Fk_StudId int,
@StudDetailAddress varchar(100),
@StudDetailDOB date 


AS
BEGIN

	SET NOCOUNT ON;

	Begin Tran 
		Begin Try

			If @StudId<1
				Insert into AStudents (StudName,StudEmail,StudContact)
				values(@StudName,@StudEmail,@StudContact);

				Select @StudId=SCOPE_IDENTITY();

				Insert into AStudentDetails (Fk_StudId,StudDetailAddress,StudDetailDOB)
				values(@StudId,@StudDetailAddress,@StudDetailDOB);

		end try

		begin catch
			rollback;
		end catch
	commit;
	--rollback;
END
GO
