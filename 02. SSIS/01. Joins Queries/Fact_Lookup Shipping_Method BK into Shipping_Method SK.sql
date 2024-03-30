--Lookup Shipping_Method BK into Shipping_Method SK
SELECT [Shipping_Method_SK]
      ,[Shipping_Method_BK]
      
  FROM [Gravity_DWH].[dbo].[Dim_Shipping_Method]
  WHERE is_current = 1