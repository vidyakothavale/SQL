--- Create a New column in Table 
-- Alter Function

SELECT * FROM Products

alter table Products 
add Amount int  --# data type is mandatory

select * From Products

update Products
set Amount = UnitPrice - UnitsInStock    --## + , - , * , / 

select * From Products
 
alter table products
add Total_Quantity Float ,Order_ratio Float

select * From Products

update products
set Total_Quantity = UnitsInStock + UnitsOnOrder ,
    Order_ratio = UnitsInStock / UnitPrice 

select * From Products