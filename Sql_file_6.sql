use sakila;
-- Group By 
-- select * from payment order by customer_id desc , amount desc;

-- Conditional Statement / Functions
-- select customer_id , amount , if (amount > 3 , 'High','Low') as Conditions  from payment;
-- Case Statement
/*
select customer_id , amount,
	case 
		when amount = 2.99 then 'High'
        when amount = 5.99 then 'Avg'
        else 'Low'
	end as Cond
from payment;

*/
-- Q1 . Select 2 col customer_id , status if customer_id geater than 1 print hello if the customer_id > 4 than print user otherwise print Regex
select customer_id ,
	case
		when customer_id > 4 then 'User'
        when customer_id > 1 then 'Hello'
        else 'Regex'
	end as Status
from payment;

-- hackerrank 3 star 
-- what are relationship in mysql 
-- what is primary key super key and candidate key
--  what are joins in sql 
-- ch 1,2,3,5 (SQL ZOO)