--Execute SQL Max_Order_Line_ID

select max([Order_Line_BK])  as update_last_load_Order_Line
 FROM [Gravity_DWH].[dbo].[Fact_Sales]