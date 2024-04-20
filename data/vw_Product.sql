ALTER VIEW vw_Product
AS
  SELECT 
		 PM.ProductModelID	
		 ,PM.[Name] AS ProductModelName
		 ,P.Avg_ListPrice
		 ,PD.[ProductDescriptionID]
		 ,PD.[Description]		 
    FROM [SalesLT].[ProductModel] AS PM
	LEFT JOIN (
				 SELECT P.ProductModelID, AVG(P.Listprice) AS Avg_ListPrice
					FROM [SalesLT].[Product] AS P
					GROUP BY P.ProductModelID
			 ) AS P
	  ON PM.ProductModelID = P.ProductModelID
	LEFT JOIN (
				 select * from [SalesLT].[ProductModelProductDescription]
				 WHERE case when ProductModelID <=10 AND Culture = 'en' THEN 1
							when ProductModelID >10 AND  ProductModelID <= 30 AND Culture = 'fr' THEN 1
							when ProductModelID >30 AND  ProductModelID <= 50 AND Culture = 'ar' THEN 1
							when ProductModelID >50 AND  ProductModelID <= 70 AND Culture = 'th' THEN 1
							when ProductModelID >70 AND  ProductModelID <= 90 AND Culture = 'he' THEN 1
							when ProductModelID >90 AND  ProductModelID <= 100 AND Culture = 'zh-cht' THEN 1			
							when ProductModelID >100 AND Culture = 'en' THEN 1
							else 0
						end = 1
			) AS PMPD
	   ON PM.ProductModelID = PMPD.ProductModelID
	LEFT JOIN [SalesLT].[ProductDescription] AS PD 
	   ON PD.ProductDescriptionID = PMPD.ProductDescriptionID
	--ORDER BY PM.ProductModelID 



  --select * from vw_product as p where p.ProductModelName = 'ML Mountain Tire'
