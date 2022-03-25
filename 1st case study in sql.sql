select max(quantity), count(*)
 from newschema.tr_orderdetails;
 
 #2
 select distinct(ProductID),Quantity
 from newschema.tr_orderdetails
 where Quantity = 3
 order by 1 asc,2 desc;
 
 
 #3
 select distinct(PropertyID)
  from newschema.tr_orderdetails;
  
  #4 
  select ProductCategory, count(*) as count
  from newschema.tr_products
  group by 1
  order by 2 desc;
  #5
  select PropertyState, count(*)
  from newschema.TR_PropertyInfo
  group by 1
  order by 2 desc
  limit 2;
  #6
   select ProductID,sum(Quantity)
  from newschema.tr_orderdetails
  group by 1
  order by 2 desc
  limit 5;
  #7
  select PropertyID,sum(Quantity)
  from newschema.tr_orderdetails
  group by 1
  order by 2 desc
  limit 5;
  
  #8.1 
  select t.ProductName,sum(o.Quantity * t.Price) as sales
  from newschema.tr_orderdetails o
  join newschema.TR_Products t
  on o.ProductID = t.ProductID
  group by 1
  order by 2 desc
  limit 5;
  #9 Find the top 5 cities that did max sales

   select pi.PropertyCity, sum(o.Quantity * t.Price) as sales
  from newschema.tr_orderdetails o
  join newschema.TR_Products t
  on o.ProductID = t.ProductID
  join newschema.TR_PropertyInfo pi
  on o.PropertyID = pi.'Prop ID'
  group by 1
  order by 2 desc
  limit 5;
  
  
  
  
 