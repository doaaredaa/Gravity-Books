SELECT b.[book_id]
      ,b.[title]
      ,b.[isbn13]
      ,b.[language_id]
      ,b.[num_pages]
      ,b.[publication_date]
      ,b.[publisher_id]
	  ,a.[author_id]
      ,a.[author_name]
      ,l.[language_code]
      ,l.[language_name]
	  ,p.[publisher_name]
  FROM [gravity_OLTP].[dbo].[book] as b
  left join [gravity_OLTP].[dbo].[book_author]  as ba
  on(b.[book_id]=ba.[book_id])
  left join [gravity_OLTP].[dbo].[author] as a
  on(a.[author_id]=ba.[author_id])
  left join [gravity_OLTP].[dbo].[book_language] as l
  on(l.[language_id]=b.[language_id])
  left join [gravity_OLTP].[dbo].[publisher] as p
  on(b.[publisher_id]=p.[publisher_id])
  --where a.author_id is not null