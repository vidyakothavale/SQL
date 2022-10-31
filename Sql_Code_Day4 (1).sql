----###group by statement
select * from Customers

select country,count(customerID) as number_of_customer
from Customers
group by country


select country,count (customerID) as number_of_customer
from Customers
group by country
order by number_of_customer desc;

--------####having clause

select country,count (customerID) as number_of_customer
from Customers
group by country
having count(customerID) > 5;


select country,count (customerID) as number_of_customer
from Customers
group by country
having count(customerID) > 5
order by number_of_customer desc


select city,count(customerid) as numberofcustomers
from Customers
group by city
order by numberofcustomers desc

select top 3 city,count(customerid) as numberofcustomers
from Customers
group by city
order by numberofcustomers desc

select City,count (customerID) as number_of_customer
from Customers
group by City
having count(customerID) > 3
order by number_of_customer desc


select City,count(customerid) as listfrom_uk
from Customers
where country='uk'
group by City
order by listfrom_uk desc


select * from Orders

select ShipVia,count(EmployeeID) as number_employee
from Orders
where ShipCity in ('rio de jenerio','sao paulo') 
      and ShipCountry='brazil'
group by ShipVia

select ShipCity,shipvia,count(Employeeid) as numberofemployee,
sum(freight) as total_amount
from orders
where shipcountry='brazil'
and  shipcity in('rio de janerio','sao paulo')
group by ShipCity,shipvia
having count(Employeeid) > 5
order by numberofemployee desc,total_amount desc


select * from Employees
select * from Orders

select Employees.LastName,count(Orders.orderid) as number_orders
from orders
inner join employees
on Orders.EmployeeID=Employees.EmployeeID
where lastname in ('peacock','Callahan')
group by LastName
having count(Orders.orderid)>100