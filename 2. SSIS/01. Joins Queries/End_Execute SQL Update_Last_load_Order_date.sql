--Execute SQL Update_Last_load_Order_date
UPDATE [dbo].[MetaData_Fact Sales_Load]
   SET [Last_load_date] = ? 
 , [Last_Load_Order_Line_ID]=?