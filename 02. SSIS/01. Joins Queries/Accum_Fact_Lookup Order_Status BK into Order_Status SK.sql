--Lookup Order_Status BK into Order_Status SK

SELECT [Order_Status_SK]
      ,[Order_Status_BK]
      
  FROM [Gravity_DWH].[dbo].[Dim_Order_Status]
  WHERE is_current = 1