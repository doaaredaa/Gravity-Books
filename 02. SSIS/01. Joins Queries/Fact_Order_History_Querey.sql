CREATE View Order_History_View 
As
(
SELECT [order_id]
	  ,MAX(IIF(s.[status_value] ='Order Received' , h.[status_date], NULL))as Received_At
	  ,MAX(IIF(s.[status_value] ='Pending Delivery' , h.[status_date], NULL))as Pending_Delivery_At
	  ,MAX(IIF(s.[status_value] ='Delivery In Progress' , h.[status_date], NULL))as Delivery_In_Progress_At
	  ,MAX(IIF(s.[status_value] ='Delivered' , h.[status_date], NULL))as Delivered_At
	  ,MAX(IIF(s.[status_value] ='Cancelled' , h.[status_date], NULL))as Cancelled_At
	  ,MAX(IIF(s.[status_value] ='Returned' , h.[status_date], NULL))as Returned_At
 FROM  [Gravity_OLTP].[dbo].[order_history] as h	  
inner join [Gravity_OLTP].[dbo].[order_status] as s
        on (s.[status_id]=h.[status_id])
GROUP BY [order_id]
)
------------------------------------------------------------------------------------------
--Fact_Order_History_Querey
SELECT  ohv.[order_id]
       ,[status_id]
	   ,h.[history_id]
      ,Cast(Received_At as date) as Received_At
	  ,Cast(Pending_Delivery_At as date) as Pending_Delivery_At
	  ,cast(Delivery_In_Progress_At as date) as Delivery_In_Progress_At
	  ,cast(Delivered_At as date) as Delivered_At
	  ,cast(Cancelled_At as date) as Cancelled_At
	  ,cast(Returned_At as date) as Returned_At

  FROM Order_History_View as ohv
inner join [Gravity_OLTP].[dbo].[order_history] as h
        on (ohv.[order_id]=h.[order_id])




--WHERE o.[order_date] >=       --user variable last_load_date
--and o.[order_date] <        --System variable startTime