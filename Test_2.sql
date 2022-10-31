create database imarticus
select * from Orders order by freight desc
--Question1-- 
--a--
select top 3  freight ,EmployeeID 
into imarticus.dbo.topshipping from Orders
group by freight,employeeid
order by Freight desc
select *  from imarticus.dbo.Top_hippingcost


--sir --
select top 3 EmployeeID ,sum( freight) as shipping_cost
from Orders
group by EmployeeID
order by shipping_cost desc


--b--
select top 3 freight ,EmployeeID
 into imarticus.dbo.top_hippingcost from Orders
group by freight,EmployeeID
order by Freight desc 

select top 3 freight ,count(EmployeeID) as numberofcustomers
 into Top_shipping_cost from Orders
group by freight
select EmployeeID from orders
drop  database imarticus;

select *  from Top_hippingcost
select * from 



select top 3 *  from orders
order by Freight desc
select EmployeeID from orders

select * from 
(select EmployeeID, frieght, dense_rank() over (order by frieght desc) r from oreders)
where r=3;



with shippingcost as(select freight, EmployeeID,dense_rank() over (order by freight desc)
as denserank
from orders)
select top 3 freight ,employeeid
from shippingcost


select top 3 freight,employeeid from
(select distinct top 3 freight ,EmployeeID
from orders order by Freight desc
)as
result order by freight desc

select top 3 



---c----

select avg(unitprice)as total from [order details]

select productid ,sum(unitprice)as sum,avg(unitprice) as total from [Order Details]
group by productid 
order by total desc





select freight from (select freight from orders order by freight desc limit 3)
order by freight limit 1;



select top 3 *  freight from (select top 3 freight from orders order by freight desc)
order by freight  asc;


select freight,EmployeeID from orders order by freight desc Limit 3;


select * from orders LIMIT 5 ;
