USE [alpitgajbhiye]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateInsertTransactionStudent]    Script Date: 8/24/2017 9:35:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spUpdateInsertTransactionStudent]
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

	SET NOCOUNT OFF;

	Begin Tran 
		Begin Try

			If @StudId<1
			Begin
				Insert into AStudents (StudName,StudEmail,StudContact)
				values(@StudName,@StudEmail,@StudContact);

				Select @StudId=SCOPE_IDENTITY();

				Insert into AStudentDetails (Fk_StudId,StudDetailAddress,StudDetailDOB)
				values(@StudId,@StudDetailAddress,@StudDetailDOB);
			End

			If @StudId>1
			Begin
				Update AStudents 
				set StudName=@StudName,
					StudEmail=@StudEmail,
					StudContact=@StudContact
				Where StudId=@StudId;

				Update AStudentDetails
				set StudDetailAddress=@StudDetailAddress,
					StudDetailDOB=@StudDetailDOB
				where Fk_StudId=@StudId;
			End

		end try

		begin catch
			rollback;
		end catch
	commit;
	--rollback;
END
