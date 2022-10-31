---1.--
 select * from orders
  select * from customer
 select * from salesman

 select  cust_name,grade from customer  ,salesman  ,orders  where 
 customer.salesman=salesman.salesman_id and salesman.salesman_id=orders.salesman_id and 
 salesman.city is not null and customer.grade is not null
 group by custemor_id;

--2--

 select * from orders
 select * from salesman

 select orders.ord_no,orders.purch_amt,orders.ord_date,orders.customer_id,orders.salesman_id,salesman.name,(sum( salesman.commision * orders.purch_amt)) as Total_amt from salesman 
inner join orders  on
salesman.salesman_id=orders.salesman_id
group by salesman.salesman_id
order by Total_amt desc limit 1;





 --3--

 select * from orders
 select * from salesman

select orders.ord_no,orders.purch_amt,orders.ord_date,salesman.city from salesman 
inner join orders  
on salesman.salesman_id=orders.salesman_id
where salesman.city='nagpur'


--4--
select ord_date,sum(purch_amt) as total_purchase ,(sum(purch_amt))* 0.15 as Total_commision 
from orders 
group by ord_date
order by ord_date ;

--5--
select * from orders

select ord_no,purch_amt,ord_date,salesman_id from orders
where purch_amt > (select avg(purch_amt) from orders)

---6.--
select * from orders

select top 1 purch_amt from (select top 5 purch_amt from orders
order by purch_amt desc) as result
order by purch_amt;


--7--
--entities=='Entity is a real world object that represents  the data'-

--relationship="relationship is the association or relation between two or more tables....
--that are created using join statement to retrierve the data--



--- 8.--
 Print customer_id, account_number and balance_amount, condition 
that if balance_amount is nil then assign transaction_amount for 
account_type = "Credit Card"

select * from bank_account_details;   

update Bank_Account_Details 
set Account_type='credit card'
where balance_amount='0' ;

select customer_id,account_number,balance_amount ,Account_type from bank_account_details 
where Account_type='credit card'

 ---9.---

select * from bank_customer; 
select * from bank_account_details; 
select * from bank_account_transaction; 

select bank_customer.customer_id,bank_account_details.account_number,bank_account_details.balance_amount,
bank_account_transaction.transaction_amount ,bank_account_transaction.transaction_date from
Bank_customer
inner join  bank_account_details
on Bank_customer.customer_id= bank_account_details.customer_id
inner join  bank_account_transaction 
on bank_account_transaction.Account_Number=Bank_Account_Details.account_number
where BANK_ACCOUNT_TRANSACTION.Transaction_Date between '2020-03-01' and '2020-04-30';

--10--

select * from bank_customer; 
select * from bank_account_details; 
select * from bank_account_transaction; 

select bank_customer.customer_id,bank_account_details.account_number,bank_account_details.balance_amount,
bank_account_transaction.transaction_amount ,bank_account_transaction.transaction_date from
Bank_customer
inner join  bank_account_details
on Bank_customer.customer_id= bank_account_details.customer_id
inner join  bank_account_transaction 
on bank_account_transaction.Account_Number=Bank_Account_Details.account_number
where BANK_ACCOUNT_TRANSACTION.Transaction_Date not between '2020-03-01' and '2020-03-31';