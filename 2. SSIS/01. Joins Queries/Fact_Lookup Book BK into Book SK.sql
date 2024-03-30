--Lookup Book BK into Book SK

SELECT [Book_SK]
      ,[Book_BK]
      
  FROM [Gravity_DWH].[dbo].[Dim_Book]
  WHERE is_current = 1