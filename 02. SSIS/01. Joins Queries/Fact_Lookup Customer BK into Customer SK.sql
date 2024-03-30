--Lookup Customer BK into Customer SK
SELECT [Customer_SK]
      ,[Customer_BK]
      
  FROM [Gravity_DWH].[dbo].[Dim_Customer]
  WHERE is_current = 1