use sakila;
select * from sakila.payment;
-- select amount, round(amount) from payment;
-- select sum(round(amount)) from payment;
select amount , sum(amount) , count(amount) from payment;
select sum(amount) , count(amount) from payment;
select count(amount) from payment where amount >5;

select sum(payment_id)  from payment;

-- count (*) ye sb ko count krta chaiye column me data ho ya na ho 
-- count (colum_name) values present hai unko hi count krega 

select count(address_id) , count(address2) , count(*) from address;
--  max , min  , sum , avg , count functions 
select max(amount) , min(amount),count(amount),sum(amount) , avg(amount) from payment;
select count( amount) from payment;-- it will be count 
select count(distinct amount ) from payment; -- it will return count unique value 

-- Q1. get the payment_id and amount for year 2005/
select payment_id , amount  
from payment
 where year(payment_date) = 2005;
 
-- Q2. get the unique customers who have done the payment in the month of june
 -- select  count(distinct customer_id) from payment where extract (month (payment_date) = 6 ;
-- Q3. get the maxium amount the avg amount and the difference between maxium and avg amount where the amout of the payment greate than > 2 $ for year 2006 
select max(amount) , avg(amount) , max(amount)-avg(amount)
from payment where amount > 2 and year(payment_date)= 2006;

-- Group By 
select count(payment_id) from payment where customer_id = 2; -- 27
-- group by statement ( grouping similar values)
select * from payment group by customer_id; -- jis bhi column pr group by apply krenge vhi select ke skhenge otherwise nhi hoga .
select customer_id from payment group by customer_id;
-- distinct is used to find  upique values form the table 
-- distinct but cant apply agricent function
-- time taking task 
-- distinct customer_id , count(payment_id) -- give and error
/*
1 100
1 200 
2 400
4 600
2 700

sum(amount)

1                            2                                    4
1 100                       2 400                                4 600
1 200                       2 700                                 

300                          1100                                   600

*/
select customer_id , count(payment_id) from payment group by customer_id;
