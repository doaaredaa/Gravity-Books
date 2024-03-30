SELECT b.[book_id]
      ,c.[customer_id]
      ,sm.[method_id]
	  ,co.[order_id]
	  ,ol.[line_id]
	  ,co.[order_date]
	  ,ol.[price]
	  ,sm.[cost]
  FROM [Gravity_OLTP].[dbo].[book] as b
 inner join [Gravity_OLTP].[dbo].[order_line] as ol
  on(b.[book_id]=ol.[book_id])
 inner join [Gravity_OLTP].[dbo].[cust_order] as co
  on(co.[order_id]=ol.[order_id])
  inner join [Gravity_OLTP].[dbo].[shipping_method] as sm
  on(sm.[method_id]=co.[shipping_method_id])
  inner join [Gravity_OLTP].[dbo].[customer] as c
  on(c.[customer_id]=co.[customer_id])

  where ol.[line_id] >         --user variable Last_Load_Order_Line_ID
  and co.[order_date] >=       --user variable last_load_date
  and co.[order_date] <        --System variable startTime