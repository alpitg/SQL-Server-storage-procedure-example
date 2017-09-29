Select * from dbo.CustomerState;

INSERT INTO dbo.CustomerState(CustomerStateName )
VALUES ('Maharashtra');
INSERT INTO dbo.CustomerState(CustomerStateName )
VALUES ('Punjab');
INSERT INTO dbo.CustomerState(CustomerStateName )
VALUES ('Gujrat');


SELECT * FROM dbo.CustomerCity; 

INSERT INTO dbo.CustomerCity(Fk_CustomerStateId,CustomerCityName )
VALUES (1,'Nagpur');
INSERT INTO dbo.CustomerCity(Fk_CustomerStateId,CustomerCityName )
VALUES (1,'Mumbai');
INSERT INTO dbo.CustomerCity(Fk_CustomerStateId,CustomerCityName )
VALUES (1,'Amravati');
INSERT INTO dbo.CustomerCity(Fk_CustomerStateId,CustomerCityName )
VALUES (1,'Wardha');

INSERT INTO dbo.CustomerCity(Fk_CustomerStateId,CustomerCityName )
VALUES (2,'Ludhiana');
INSERT INTO dbo.CustomerCity(Fk_CustomerStateId,CustomerCityName )
VALUES (2,'Jalandhar');
INSERT INTO dbo.CustomerCity(Fk_CustomerStateId,CustomerCityName )
VALUES (2,'Amritsar');
INSERT INTO dbo.CustomerCity(Fk_CustomerStateId,CustomerCityName )
VALUES (2,'Mohali');

INSERT INTO dbo.CustomerCity(Fk_CustomerStateId,CustomerCityName )
VALUES (3,'Surat');
INSERT INTO dbo.CustomerCity(Fk_CustomerStateId,CustomerCityName )
VALUES (3,'Vadodara');
INSERT INTO dbo.CustomerCity(Fk_CustomerStateId,CustomerCityName )
VALUES (3,'Rajkot');
INSERT INTO dbo.CustomerCity(Fk_CustomerStateId,CustomerCityName )
VALUES (3,'Gandhinagar');
INSERT INTO dbo.CustomerCity(Fk_CustomerStateId,CustomerCityName )
VALUES (3,'Bhuj');
INSERT INTO dbo.CustomerCity(Fk_CustomerStateId,CustomerCityName )
VALUES (3,'Bhavnagar');



Select * from dbo.Customers;

INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Alpit','8054754254',1,1);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Praveen','7584574574',2,1);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Manisha','5465748541',1,2);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Sam','8054754254',1,3);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Sammy','8545547411',3,1);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Max','9584457455',3,2);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('John','7548523654',3,2);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Mamu','9632546582',3,2);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Jack','8542332111',3,2);

INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Sammu','8885454254',3,3);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Mackline','9632546582',3,4);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Jackleene','7584523655',2,1);

INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Suraj','8885425654',3,3);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Shubham','8885695412',3,4);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Jacku','8584574524',2,1);

INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Raj','8885425654',1,2);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Rajan','858885422',2,1);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Mysuree','8542555555',2,1);

INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Raju','8885425654',3,2);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Harish','8542547444',3,3);
INSERT INTO dbo.Customers ( CustomerName, CustomerContact, Fk_CustomerStateId, Fk_CustomerCityId)
VALUES ('Sumedh','8542555555',2,1);


Select * from dbo.CustomerProductCategory;

INSERT INTO dbo.CustomerProductCategory ( CustomerProductCategoryName)
VALUES ('Dry Fruits');
INSERT INTO dbo.CustomerProductCategory ( CustomerProductCategoryName)
VALUES ('T-Shirts');
INSERT INTO dbo.CustomerProductCategory ( CustomerProductCategoryName)
VALUES ('Formal Shirts');
INSERT INTO dbo.CustomerProductCategory ( CustomerProductCategoryName)
VALUES ('Formal Pants');
INSERT INTO dbo.CustomerProductCategory ( CustomerProductCategoryName)
VALUES ('Jeanes');
INSERT INTO dbo.CustomerProductCategory ( CustomerProductCategoryName)
VALUES ('Full Jackets');
INSERT INTO dbo.CustomerProductCategory ( CustomerProductCategoryName)
VALUES ('Half Jackets');
INSERT INTO dbo.CustomerProductCategory ( CustomerProductCategoryName)
VALUES ('Washing Powder');
INSERT INTO dbo.CustomerProductCategory ( CustomerProductCategoryName)
VALUES ('Washing Machine');
INSERT INTO dbo.CustomerProductCategory ( CustomerProductCategoryName)
VALUES ('Fruits');
INSERT INTO dbo.CustomerProductCategory ( CustomerProductCategoryName)
VALUES ('Chairs');
INSERT INTO dbo.CustomerProductCategory ( CustomerProductCategoryName)
VALUES ('Home Appliances');
INSERT INTO dbo.CustomerProductCategory ( CustomerProductCategoryName)
VALUES ('Kids Zone');
INSERT INTO dbo.CustomerProductCategory ( CustomerProductCategoryName)
VALUES ('Footwear');
INSERT INTO dbo.CustomerProductCategory ( CustomerProductCategoryName)
VALUES ('Food');


----CustomerPaymentType

--Select * from dbo.CustomerPaymentType;

--INSERT INTO dbo.CustomerPaymentType( Fk_CustomerDetailsId, Offline, Online )
--VALUES (1, 0, 1);
--INSERT INTO dbo.CustomerPaymentType( Fk_CustomerDetailsId, Offline, Online )
--VALUES (1, 1, 0);
--INSERT INTO dbo.CustomerPaymentType( Fk_CustomerDetailsId, Offline, Online )
--VALUES (1, 0, 1);
--INSERT INTO dbo.CustomerPaymentType( Fk_CustomerDetailsId, Offline, Online )
--VALUES (1, 1, 0);
--INSERT INTO dbo.CustomerPaymentType( Fk_CustomerDetailsId, Offline, Online )
--VALUES (2, 0, 1);
--INSERT INTO dbo.CustomerPaymentType( Fk_CustomerDetailsId, Offline, Online )
--VALUES (2, 0, 1);
--INSERT INTO dbo.CustomerPaymentType( Fk_CustomerDetailsId, Offline, Online )
--VALUES (2, 1, 0);
--INSERT INTO dbo.CustomerPaymentType( Fk_CustomerDetailsId, Offline, Online )
--VALUES (3, 1, 0);
--INSERT INTO dbo.CustomerPaymentType( Fk_CustomerDetailsId, Offline, Online )
--VALUES (4, 1, 0);
--INSERT INTO dbo.CustomerPaymentType( Fk_CustomerDetailsId, Offline, Online )
--VALUES (3, 0, 1);
--INSERT INTO dbo.CustomerPaymentType( Fk_CustomerDetailsId, Offline, Online )
--VALUES (4, 0, 1);
--INSERT INTO dbo.CustomerPaymentType( Fk_CustomerDetailsId, Offline, Online )
--VALUES (3, 1, 0);
--INSERT INTO dbo.CustomerPaymentType( Fk_CustomerDetailsId, Offline, Online )
--VALUES (3, 1, 0);
--INSERT INTO dbo.CustomerPaymentType( Fk_CustomerDetailsId, Offline, Online )
--VALUES (5, 0, 1);






--Select * from dbo.CustomerPaymentByCard ;

--INSERT INTO dbo.CustomerPaymentByCard(  Fk_CustomerPaymentTypeId, PaymentByCashAmount, Discount, FinalAmount, CardPaymnetDate)
--VALUES (1, 2000, 50, 1000, '2017/12/23');
--INSERT INTO dbo.CustomerPaymentByCard(  Fk_CustomerPaymentTypeId, PaymentByCashAmount, Discount, FinalAmount, CardPaymnetDate)
--VALUES (2, 5000, 10, 4500, '2017/12/23');
--INSERT INTO dbo.CustomerPaymentByCard(  Fk_CustomerPaymentTypeId, PaymentByCashAmount, Discount, FinalAmount, CardPaymnetDate)
--VALUES (3, 2000, 10, 1800, '2017/12/23');


--Select * from dbo.CustomerPaymentByCash;

--INSERT INTO dbo.CustomerPaymentByCash(  Fk_CustomerPaymentTypeId, PaymentByCashAmount, Discount, FinalAmount, CardPaymnetDate)
--VALUES (4, 2000, 50, 1000, '2017/12/23');
--INSERT INTO dbo.CustomerPaymentByCash(  Fk_CustomerPaymentTypeId, PaymentByCashAmount, Discount, FinalAmount, CardPaymnetDate)
--VALUES (5, 5000, 10, 4500, '2017/12/23');
--INSERT INTO dbo.CustomerPaymentByCash(  Fk_CustomerPaymentTypeId, PaymentByCashAmount, Discount, FinalAmount, CardPaymnetDate)
--VALUES (6, 2000, 50, 1000, '2017/12/23');


Select * from CustomerDetails;

INSERT INTO dbo.CustomerDetails( Fk_CustId, Fk_CustomerProductId, TotalProductPurchased, ProductPurchasedDate)
VALUES (1, 1, 5, '2017/12/23');

INSERT INTO dbo.CustomerDetails( Fk_CustId, Fk_CustomerProductId, TotalProductPurchased, ProductPurchasedDate)
VALUES (2, 1, 5, '2017/07/19');

INSERT INTO dbo.CustomerDetails( Fk_CustId, Fk_CustomerProductId, TotalProductPurchased, ProductPurchasedDate)
VALUES (3, 2, 5, '2017/07/13');

INSERT INTO dbo.CustomerDetails( Fk_CustId, Fk_CustomerProductId, TotalProductPurchased, ProductPurchasedDate)
VALUES (4, 3, 5, '2017/07/02');

INSERT INTO dbo.CustomerDetails( Fk_CustId, Fk_CustomerProductId, TotalProductPurchased, ProductPurchasedDate)
VALUES (5, 4, 5, '2017/06/01');


INSERT INTO dbo.CustomerDetails( Fk_CustId, Fk_CustomerProductId, TotalProductPurchased, ProductPurchasedDate)
VALUES (1, 4, 2, '2017/06/16');

INSERT INTO dbo.CustomerDetails( Fk_CustId, Fk_CustomerProductId, TotalProductPurchased, ProductPurchasedDate)
VALUES (2, 4, 3, '2016/05/14');

INSERT INTO dbo.CustomerDetails( Fk_CustId, Fk_CustomerProductId, TotalProductPurchased, ProductPurchasedDate)
VALUES (2, 3, 1, '2016/05/22');

INSERT INTO dbo.CustomerDetails( Fk_CustId, Fk_CustomerProductId, TotalProductPurchased, ProductPurchasedDate)
VALUES (3, 5, 3, '2016/05/10');



Select * from CustomerProducts;

INSERT INTO dbo.CustomerProducts( CustomerProductName, Fk_CustomerProductCategoryId,  ProductAmount, InStock, ProductRefilledDate )
VALUES ('Kaju', 1, 500, 18, '2017/12/23','Kaju with good Quality');

INSERT INTO dbo.CustomerProducts( CustomerProductName, Fk_CustomerProductCategoryId,  ProductAmount, InStock, ProductRefilledDate )
VALUES ('Full Formal shirt', 3, 500, 17, '2017/07/23','size 32, 42, 40');

INSERT INTO dbo.CustomerProducts( CustomerProductName, Fk_CustomerProductCategoryId,  ProductAmount, InStock, ProductRefilledDate )
VALUES ('Half Jacket blue', 5, 1000, 17, '2017/07/20','size 32,28,40');

INSERT INTO dbo.CustomerProducts( CustomerProductName, Fk_CustomerProductCategoryId,  ProductAmount, InStock, ProductRefilledDate )
VALUES ('Nirma', 8, 200, 17, '2017/07/12','Quality product');

INSERT INTO dbo.CustomerProducts( CustomerProductName, Fk_CustomerProductCategoryId,  ProductAmount, InStock, ProductRefilledDate )
VALUES ('Car', 13, 5000, 17, '2017/07/16','color available red, green');

INSERT INTO dbo.CustomerProducts( CustomerProductName, Fk_CustomerProductCategoryId,  ProductAmount, InStock, ProductRefilledDate )
VALUES ('TV', 12, 50000, 17, '2017/07/18','HD 1080 only');

INSERT INTO dbo.CustomerProducts( CustomerProductName, Fk_CustomerProductCategoryId,  ProductAmount, InStock, ProductRefilledDate )
VALUES ('Pista', 1, 200, 50, '2017/06/10','Good Quality Product');

INSERT INTO dbo.CustomerProducts( CustomerProductName, Fk_CustomerProductCategoryId,  ProductAmount, InStock, ProductRefilledDate )
VALUES ('Hut', 13, 1200, 20, '2017/06/11','Kids hut they can enjoy under it');

INSERT INTO dbo.CustomerProducts( CustomerProductName, Fk_CustomerProductCategoryId,  ProductAmount, InStock, ProductRefilledDate )
VALUES ('Electric Car', 13, 500, 15, '2017/06/15','only portable');




Select * from dbo.CustomerInventory;

INSERT INTO dbo.CustomerInventory( Fk_CustomerProductId, AvailableInStock, ProductRefilledDate)
VALUES (1, 70, '2017/07/23');
INSERT INTO dbo.CustomerInventory( Fk_CustomerProductId, AvailableInStock, ProductRefilledDate)
VALUES (2, 70, '2017/07/20');
INSERT INTO dbo.CustomerInventory( Fk_CustomerProductId, AvailableInStock, ProductRefilledDate)
VALUES (3, 70, '2017/07/12');
INSERT INTO dbo.CustomerInventory( Fk_CustomerProductId, AvailableInStock, ProductRefilledDate)
VALUES (4, 70, '2017/07/16');
INSERT INTO dbo.CustomerInventory( Fk_CustomerProductId, AvailableInStock, ProductRefilledDate)
VALUES (5, 70, '2017/07/18');


Select * from CustomerPaymentType;

Select * from CustomerDetails;


INSERT INTO dbo.CustomerPaymentType(Fk_CustomerDetailsId, PaymentByCash, PaymentByCard, TotalAmount, Discount, FinalAmount, PaymnetDate)
VALUES (2, 1, 0,2000,50, 1000,'2017/12/23');
INSERT INTO dbo.CustomerPaymentType(Fk_CustomerDetailsId, PaymentByCash, PaymentByCard, TotalAmount, Discount, FinalAmount  , PaymnetDate)
VALUES (3, 1, 0,2000,50, 1000,'2017/07/19');
INSERT INTO dbo.CustomerPaymentType(Fk_CustomerDetailsId, PaymentByCash, PaymentByCard, TotalAmount, Discount, FinalAmount  , PaymnetDate)
VALUES (4, 0, 1,2000,50, 1000,'2017/07/13');
INSERT INTO dbo.CustomerPaymentType(Fk_CustomerDetailsId, PaymentByCash, PaymentByCard, TotalAmount, Discount, FinalAmount  , PaymnetDate)
VALUES (5, 1, 0,2000,50, 1000,'2017/07/02');
INSERT INTO dbo.CustomerPaymentType(Fk_CustomerDetailsId, PaymentByCash, PaymentByCard, TotalAmount, Discount, FinalAmount  , PaymnetDate)
VALUES (6, 0, 1,2000,50, 1000,'2017/06/01');
INSERT INTO dbo.CustomerPaymentType(Fk_CustomerDetailsId, PaymentByCash, PaymentByCard, TotalAmount, Discount, FinalAmount  , PaymnetDate)
VALUES (7, 0, 1,2000,50, 1000,'2017/06/02');




--Select * from dbo.CustomerPaymentByCard ;
----14:10:00
--INSERT INTO dbo.CustomerPaymentByCard( Fk_CustomerPaymentTypeId, PaymentByCardAmount, CardNo, CardHolderName, CardPaymnetDate)
--VALUES (4, 1000,12011231421241, 'Alpit', '2017/07/13');
--INSERT INTO dbo.CustomerPaymentByCard( Fk_CustomerPaymentTypeId, PaymentByCardAmount, CardNo, CardHolderName, CardPaymnetDate)
--VALUES (6, 1000,12011458212454, 'Sam', '2017/06/02');