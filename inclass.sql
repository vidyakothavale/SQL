--1--

select product,price ,month,sum(quantity) as sumquantity from bank_inventory_pricing
where quantity >5 
group by product,price,Month;

select * from bank_inventory_pricing
---2----
select product,quantity,month ,count(product) as temp,
estimated_sale_price,purchase_cost from Bank_Inventory_pricing
where Estimated_sale_price<purchase_cost
group by product,Quantity,Month,estimated_sale_price ,purchase_cost;


---3---
select top 1 estimated_sale_price from (select top 3 estimated_sale_price
from Bank_Inventory_pricing
order by estimated_sale_price desc)as result
order by estimated_sale_price ;

--4--
select product,count( product) as countproduct  from  Bank_Inventory_pricing
group by product
having count(product) >1

--5--
select * from Bank_Inventory_pricing
where product='paypoints' and quantity>2

--6--
select * from Bank_Inventory_pricing
update Bank_Inventory_pricing
set Quantity=3,Price=410.67 
where Product='paypoints'

---7---
select * from Bank_branch_PL

select product ,branch ,sum(estimated_profit) as estprofit,sum(revenue-cost)as realprofit 
from Bank_branch_PL
group by product,branch
having sum(revenue-Cost) > sum(estimated_profit)


--8--
select product,cost,month,branch,banker,revenue,estimated_profit, sum(revenue-cost) as real_profit
from Bank_branch_PL
group by product, month,cost, branch,banker,revenue,estimated_profit
having sum(revenue-cost) > 0 ;


---9---
select * from  Bank_Inventory_pricing
alter table Bank_Inventory_pricing
alter column quantity char; 

---10---
select * from Bank_Inventory_pricing
where product like '%u%' ;

---11---
select branch ,product ,sum(revenue-(cost-cost*0.30)) as profit,
sum(Estimated_profit) as sum_estimatedpropfit from Bank_branch_PL
group by Branch,Product
having sum(revenue-(cost-cost*0.30)) > sum(Estimated_profit)

--12--
select * from Bank_Inventory_pricing
where product not in ('busicard','supersave')

--13--
select * from Bank_Inventory_pricing
where price between 220 and 300

--14--
select distinct top 5  product from  Bank_Inventory_pricing
 
 --15--
 UPDATE Bank_Inventory_pricing
 SET  PRICE=PRICE+PRICE*0.15
 WHERE QUANTITY > 3

 --16--
 SELECT ROUND(PRICE,0) FROM Bank_Inventory_pricing



 ----

 select * from Bank_Inventory_pricing
update Bank_Inventory_pricing
set PRODUCT='paypoints'
where Product='FDFFDSFBFCSDKJCVDJVDFFVJKDJNSVVCJDSFVKJJDSVC'


--17--

--18--
alter table Bank_Inventory_pricing
add  new_price float
update  Bank_Inventory_pricing
set new_price=price+100
where quantity >3;


--19--
select * from Bank_Account_Relationship_Details
where Account_type in ('add-on credit card','credit card')

--20--
select * from Bank_Account_Details
select * from bank_account_transaction
select * from bank_account_relationship_details

select  Bank_Account_Details.Account_Number,
		Bank_Account_Details.Account_type,
	   bank_account_transaction.Transaction_amount,
	   bank_account_relationship_details.Linking_Account_Number
from Bank_Account_Details inner join bank_account_transaction
on Bank_Account_Details.Account_Number = bank_account_transaction.Account_Number
inner join bank_account_relationship_details
on bank_account_transaction.Account_Number = bank_account_relationship_details.Account_Number




------------- Q21 ------------

select * from bank_account_transaction
select * from bank_account_relationship_details

select bank_account_relationship_details.Account_Number,
	   bank_account_relationship_details.Account_type,
	   sum(bank_account_transaction.Transaction_amount) as Transaction_amount 
from bank_account_relationship_details inner join bank_account_transaction
on bank_account_relationship_details.Account_Number = bank_account_transaction.Account_Number
where Account_type in ('credit card','add-on credit card')
group by  bank_account_relationship_details.Account_Number,bank_account_relationship_details.Account_type


------------- Q22 ------------
select * from BANK_ACCOUNT_TRANSACTION
order by Transaction_Date desc

select sum(transaction_amount) as aggregate_transaction_amount from BANK_ACCOUNT_TRANSACTION 
where Transaction_Date between '2020-04-01' and  '2020-04-30'
union all
select sum(transaction_amount) as aggregate_transaction_amount from BANK_ACCOUNT_TRANSACTION 
where Transaction_Date between '2020-03-01' and  '2020-03-30'


---23---


------------- Q24 ------------

select * from Bank_Account_Details
select * from BANK_ACCOUNT_TRANSACTION

select Bank_Account_Details.Account_Number,
	   count(BANK_ACCOUNT_TRANSACTION.Transaction_amount) as No_Transaction
from Bank_Account_Details inner join BANK_ACCOUNT_TRANSACTION
on Bank_Account_Details.Account_Number = BANK_ACCOUNT_TRANSACTION.Account_Number
where Bank_Account_Details.Account_type in ('Credit Card','Add-on Credit Card')
group by Bank_Account_Details.Account_Number


------------- Q25 ------------

select * from employee_details
select * from Department_Details 

select employee_id,first_name,last_name,phone_number,salary,job_id from employee_details
    where EMPLOYEE_ID = any(select employee_id from Department_Details
                          where DEPARTMENT_NAME='contracting')

------------- Q26 ------------
select * from bank_account_transaction;
select * from bank_account_details;

select bank_account_details.account_type,bank_account_transaction.transaction_amount*4 as deposit_transactions
from bank_account_details inner join bank_account_transaction 
on  bank_account_details.account_number = bank_account_transaction.account_number
where account_type in ('savings','RECURRING DEPOSITS')

------------- Q27 ------------

select employee_id,first_name, last_name , phone_number ,email, job_id 
from employee_details
where not job_id  = 'IT_PROG'

------------- Q29 ------------
select * from employee_details
select * from Department_Details

select employee_id , first_name ,last_name phone_number ,salary, job_id 
from employee_details
where employee_id = Any(select EMPLOYEE_ID from Department_Details 
	    where manager_id = '60')



------------- Q30 ------------
select * from employee_details
select * from Department_Details

create table emp_dept(
employee_id float ,
first_name nvarchar(255),
last_name nvarchar(255),
Email nvarchar(255),
phone_number float,
HIRE_DATE date,
Jod_Id nvarchar(255),
salary float,
Manager_id float,
Department_id float,
Department_Name nvarchar(255),
LOCATION_ID float)

--create table emp_dept(employee_id float ,first_name nvarchar(255),Department_Name nvarchar(255))-----

select * from emp_dept

---insert into emp_dept---
select employee_details.employee_id,
		employee_details.FIRST_NAME,
       department_details.DEPARTMENT_NAME
from employee_details  inner join department_details 
on employee_details.EMPLOYEE_ID = department_details.EMPLOYEE_ID

select * from emp_dept