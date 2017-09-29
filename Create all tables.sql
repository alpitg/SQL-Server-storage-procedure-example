
--Customer
CREATE TABLE dbo.Customers(
	CustId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	CustomerName varchar(100) NOT NULL,
	CustomerContact nvarchar(12) NOT NULL,
	Fk_CustomerStateId int FOREIGN KEY REFERENCES dbo.CustomerState(CustomerStateId) ,
	Fk_CustomerCityId int FOREIGN KEY REFERENCES dbo.CustomerCity(CustomerCityId) ,
	);

--State
CREATE TABLE dbo.CustomerState(
	CustomerStateId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	CustomerStateName varchar(100) NOT NULL,
	);

--City
CREATE TABLE dbo.CustomerCity(
	CustomerCityId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Fk_CustomerStateId int FOREIGN KEY REFERENCES dbo.CustomerState(CustomerStateId) ,
	CustomerCityName varchar(100) NOT NULL,
	
	);
	
----PaymentByCard
--CREATE TABLE dbo.CustomerPaymentByCard(
--	PaymentByCardId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--	Fk_CustomerPaymentTypeId int FOREIGN KEY REFERENCES CustomerPaymentType(CustomerPaymentTypeId),
--	PaymentByCashAmount int,
--	Discount int, 
--	FinalAmount int,
--	CardPaymnetDate datetime default(GETDATE()) not null

--	);

--	select * from CustomerPaymentByCash;


----PaymentByCash
--CREATE TABLE dbo.CustomerPaymentByCash(
--	PaymentByCashId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--	Fk_CustomerPaymentTypeId int FOREIGN KEY REFERENCES CustomerPaymentType(CustomerPaymentTypeId),
--	PaymentByCashAmount int,
--	Discount int, 
--	FinalAmount int,
--	CardPaymnetDate datetime default(GETDATE()) not null


--	);

	
----PaymentType
--CREATE TABLE dbo.CustomerPaymentType(
--	CustomerPaymentTypeId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--	Fk_CustomerDetailsId int FOREIGN KEY REFERENCES CustomerDetails(CustomerDetailsId),
--	Online bit not null,
--	Offline bit default 1 not null
	
--	);


--PaymentType
CREATE TABLE dbo.CustomerPaymentType(
	CustomerPaymentTypeId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Fk_CustomerDetailsId int FOREIGN KEY REFERENCES CustomerDetails(CustomerDetailsId),
	PaymentByCash bit default 1 not null,
	PaymentByCard bit default 0 not null,
	TotalAmount int,
	Discount int, 
	FinalAmount int,
	PaymnetDate datetime default(GETDATE()) not null

	);

	
------PaymentByCard
--CREATE TABLE dbo.CustomerPaymentByCard(
--	PaymentByCardId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--	Fk_CustomerPaymentTypeId int FOREIGN KEY REFERENCES CustomerPaymentType(CustomerPaymentTypeId),
--	PaymentByCardAmount int,
--	CardNo varchar(20), 
--	CardHolderName varchar(50),
--	CardPaymnetDate datetime default(GETDATE()) not null
--	);
	

--ProductCategory
CREATE TABLE dbo.CustomerProductCategory(
	CustomerProductCategoryId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	CustomerProductCategoryName varchar(100) NOT NULL
	);

--Products
CREATE TABLE dbo.CustomerProducts(
	CustomerProductId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	CustomerProductName varchar(100) NOT NULL,
	Fk_CustomerProductCategoryId int FOREIGN KEY REFERENCES dbo.CustomerProductCategory(CustomerProductCategoryId) ,
	ProductAmount int,
	InStock int ,
	ProductRefilledDate date default(GETDATE()),
	ProductDetails varchar(50)
	);




	
--CustomerDetails

CREATE TABLE dbo.CustomerDetails(
	CustomerDetailsId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Fk_CustId int FOREIGN KEY REFERENCES dbo.Customers(CustId) ,
	Fk_CustomerProductId int FOREIGN KEY REFERENCES dbo.CustomerProducts(CustomerProductId) ,
	TotalProductPurchased int,
	ProductPurchasedDate date default(GETDATE())
	);


	
--Inventory

CREATE TABLE dbo.CustomerInventory(
	InventoryId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Fk_CustomerProductId int FOREIGN KEY REFERENCES dbo.CustomerProducts(CustomerProductId) ,
	AvailableInStock int default 0 not null,
	ProductRefilledDate date default(GETDATE())
	);







