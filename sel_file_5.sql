use sakila ;
select * from payment;
select count(customer_id) from payment where customer_id = 3;
select customer_id , sum(amount) ,count(customer_id) from  payment group by customer_id;

/*
group by ka use hmm duplicate values pr hi apply krte hai only 

1). kabhi bhi where condition agreegate function pr nhi chlti 
  --> where colse ka kam hai data ko filter krna 
  --> we use having in agreegate function to filter data
  --> where and having both are the filter function
  --> prsent in your table
  --> apply on agreegate  function  to filter data in 
*/
select payment_id , count(*) from payment group by payment_id;
select customer_id , count(customer_id) from payment where customer_id > 3  group by customer_id;

-- filter on aggregate function
select customer_id , count(customer_id) from payment  group by customer_id having count(customer_id)>30;
-- where --> group by 
-- group by --> having
select amount , count(*) , sum(amount) from payment where amount>2 group by amount ;
select amount , count(*) , sum(amount) from payment group by amount having count(*) > 3000; 

-- as keyword are used to change the new_table name
select amount , count(*) as totalamount , sum(amount) from payment group by amount having totalcount >3000;
select amount , count(*) as totalcount, sum(amount) from payment group by amount having totalcount > 3000; 
/*
Q1. get the staff_id and total numbers of customer_serve by each staff;
Q2. get the total_amount and number of payments done for each month 
Q3. get the amount and total number of unique customer who have done the payment for each amount 
Q4. get the number of tranjactions achive for each amount for the year 2005 where the num of tranjaction shoud be greater than 15
*/

-- Q1. 
SELECT staff_id,COUNT(customer_id) FROM payment GROUP BY staff_id;
-- Q2. 
SELECT YEAR(payment_date), MONTH(payment_date), SUM(amount), COUNT(payment_id) FROM payment GROUP BY YEAR(payment_date), MONTH(payment_date);
-- Q3. 
SELECT amount, COUNT(DISTINCT customer_id) FROM payment GROUP BY amount;
-- Q4 . 
SELECT amount ,count(*) FROM payment WHERE YEAR(payment_date)=2005 GROUP BY amount HAVING COUNT(payment_id)>15;
