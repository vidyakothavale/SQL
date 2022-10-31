---- Joins -- 
--1.Inner Join
--2.Outer Join
--3.Left Join
--4.Right Join

select * From Product_demo
select * From Locality

select Product from product_demo

select product_demo.product from product_demo

---########### Inner Join ---###########

SELECT Product_demo.*, Locality.City,Locality.State
FROM 
Product_demo INNER JOIN Locality 
ON
Product_demo.Customer_id = Locality.Customer_id

---########### Outer Join ---###########

SELECT Product_demo.*, Locality.City,Locality.State
FROM 
Product_demo  FULL OUTER JOIN Locality 
ON 
Product_demo.Customer_id=Locality.Customer_id

-- left == Product_demo
-- right == Locality

---########### Left Join ---###########

SELECT Product_demo.*, Locality.City,Locality.State
FROM 
Product_demo LEFT JOIN Locality 
ON 
Product_demo.Customer_id=Locality.Customer_id;

---########### Right Join ---###########

SELECT  Locality.*,Product_demo.Product
FROM 
Product_demo Right JOIN Locality 
ON 
Product_demo.Customer_id=Locality.Customer_id
