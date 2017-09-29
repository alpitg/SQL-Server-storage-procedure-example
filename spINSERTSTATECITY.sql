SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alpit
-- Create date: 2017/08/26
-- =============================================
ALTER PROCEDURE spInsertStateCity

@CustomerStateId int,
@CustomerStateName varchar(100),
--@CustomerCityId int,
@Fk_CustomerStateId int,
@CustomerCityName varchar(100)

AS
BEGIN
	SET NOCOUNT ON;

	if @CustomerStateId<1
    BEGIN
		BEGIN TRAN
			BEGIN TRY
				INSERT INTO dbo.CustomerState(CustomerStateName)
				VALUES(@CustomerStateName);

				SELECT @CustomerStateId=SCOPE_IDENTITY();

				INSERT INTO dbo.CustomerCity(Fk_CustomerStateId, CustomerCityName)
				VALUES(@CustomerStateId, @CustomerCityName);
			END TRY
			BEGIN CATCH
				ROLLBACK;
			END CATCH
		COMMIT;
	END
	

END
GO

SELECT * from CustomerCity;
SELECT * from CustomerState;

sp_help CustomerState;
sp_help CustomerCity;


spInsertStateCity

spInsertStateCity -1,'telangana ',-1,'Warangal'