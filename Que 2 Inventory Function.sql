SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alpit
-- Create date: 2017/08/26
-- =============================================
CREATE PROCEDURE spInsertCustomerInventory
	
@InventoryId int,
@Fk_CustomerProductId int,
@AvailableInStock int,
@ProductRefilledDate date
	
AS
BEGIN
	
	SET NOCOUNT ON;

	If @InventoryId<1
	BEGIN
		INSERT INTO dbo.CustomerInventory(
						Fk_CustomerProductId, 
						AvailableInStock,
						ProductRefilledDate
					)
		VALUES(@Fk_CustomerProductId, @AvailableInStock, @ProductRefilledDate);

		SELECT dbo.fInventoryInsert() ;
	 END
END
GO

spInsertCustomerInventory -1, 9, 35,'2016-12-14' 

select * from CustomerInventory;