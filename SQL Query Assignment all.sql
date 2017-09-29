

--Question 3: Display all stock along with product description.  
SELECT	cP.CustomerProductName,
		cP.InStock,
		cP.ProductDescription
	FROM CustomerProducts cP;




--Question 4: Find all products having less inventory.    
	
	SELECT	TOP 1 ci.Fk_CustomerProductId,
			MIN(ci.AvailableInStock) AS InStock
	 FROM CustomerInventory ci
	GROUP BY ci.AvailableInStock,
			 ci.Fk_CustomerProductId
	ORDER BY ci.AvailableInStock ASC;


--Question 5: Find maximum price each category
         
SELECT  SUM(Convert(int,cProd.ProductAmount)),
		cPCat.CustomerProductCategoryName
	FROM CustomerProducts cProd
	INNER JOIN dbo.CustomerProductCategory cPCat ON cProd.Fk_CustomerProductCategoryId=cPCat.CustomerProductCategoryId
	GROUP BY cPCat.CustomerProductCategoryId ,
			 cPCat.CustomerProductCategoryName;


--Question 6: Select products that had been added in last month. 

Select  cProd.CustomerProductId ,
		cProd.CustomerProductName,
		cInv.ProductRefilledDate
	from CustomerProducts cProd
	INNER JOIN dbo.CustomerInventory cInv ON cProd.CustomerProductId=cInv.Fk_CustomerProductId
	where cInv.ProductRefilledDate LIKE '2017%';
	
	--Select * from CustomerProducts
	--Select * from CustomerInventory



--Question 7: Select those customer having purchase maximum product by this year and previous year. 

SELECT *	FROM dbo.customerDetails cD 

SELECT SUM(cD.Fk_CustId),
		 cD.ProductPurchasedDate
	
	FROM dbo.customerDetails cD 
	GROUP BY cD.Fk_CustId,
			 cD.ProductPurchasedDate;



--Question 8: Delete all records having very less sell.  

DELETE 
	FROM dbo.CustomerProducts 
	WHERE Fk_CustomerProductCategoryId=(
	SELECT MAX(cp.Fk_CustomerProductCategoryId)
			FROM CustomerProducts cp
			WHERE cp.Fk_CustomerProductCategoryId IN
			(Select COUNT(cp.Fk_CustomerProductCategoryId) 
				from CustomerProducts cp
				GROUP BY cp.Fk_CustomerProductCategoryId)
);

	----MIN SALE RECORD OF PRODUCT/ITEM
	--SELECT MIN(cp.Fk_CustomerProductCategoryId)
	--FROM CustomerProducts cp
	--WHERE cp.Fk_CustomerProductCategoryId IN
	--   (Select COUNT(cp.Fk_CustomerProductCategoryId) 
	--	from CustomerProducts cp
	--	GROUP BY cp.Fk_CustomerProductCategoryId 
	--);


	----COUNT OF PRODUCT BY CATEGORY GROUP
	--  Select COUNT(cp.Fk_CustomerProductCategoryId) 
	--	from CustomerProducts cp
	--	GROUP BY cp.Fk_CustomerProductCategoryId ;


