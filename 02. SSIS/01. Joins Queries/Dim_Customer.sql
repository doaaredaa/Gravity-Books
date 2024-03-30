SELECT c.[customer_id]
      ,c.[first_name]
      ,c.[last_name]
      ,c.[email]
	  ,ast.[status_id]
      ,ast.[address_status]
	  ,addr.[address_id]
      ,addr.[street_number]
      ,addr.[street_name]
      ,addr.[city]
	  ,cont.[country_id]
      ,cont.[country_name]
  FROM [gravity_OLTP].[dbo].[customer] as c
  left join [gravity_OLTP].[dbo].[customer_address]  as ca
  on(c.[customer_id]=ca.[customer_id])
  left join [gravity_OLTP].[dbo].[address_status]  as ast
  on(ast.[status_id]=ca.[status_id])
  left join [gravity_OLTP].[dbo].[address]  as addr
  on(addr.[address_id]=ca.[address_id])
  left join [gravity_OLTP].[dbo].[country]  as cont
  on(cont.[country_id]=addr.[country_id])