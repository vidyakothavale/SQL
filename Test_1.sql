create database Test
select * from northwind.dbo.superstore
select * from superstore
select * into Test from superstore

select * from Test
---Question(1)---
--A--
select * from Test
where segment='consumer'
--B--
select * into Test_consumer from Test
where segment='consumer'
select *  from Test_consumer

--Question(2)--
--a,b--
select * from Test
where Category='technology'and sub_category='phones'
--c.--
select * into fro from Test
where Category='technology'and sub_category='phones'
select * from fro

--Question(3)--
--a--
select * from Test
where Region in ('west','south','central')

--b--
select * into Test_country from Test
where Region in ('west','south','central')
select * from  Test_country

--Question(4)--
--a.--
alter table Test
add Totalsale float
select * from Test

update Test
set Totalsale=sales*Quantity
select * from Test

--Question(5)--

select * from Test
where sales is null 