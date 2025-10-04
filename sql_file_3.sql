use sakila ; 
select * from sakila.actor;
select first_name , concat('-', first_name),char_length(first_name) , substr(first_name,2) from actor;
-- Trim Function

select char_length(' hey '); -- 5 
select trim(' hey '); 

select first_name , replace(first_name , 'E','#') from actor;
select first_name , lpad(first_name,'5','@') from actor;
-- Numeric Function
-- round function 
select round(11.61);
select round(546.627, -1) ; -- only the integer round off
select round(6546.627, 2) , truncate(6546.627 , 2);
-- other function
select mod(10,2) ,floor(6.999999) , ceil(4.000002);
-- Date Function 
-- it works on date

select current_date() ;-- system ki current date return krta hai 
select current_time() ;
select current_timestamp() ; 
select now(); -- it will return time and date
select adddate(now() , 40 );
-- interval are add or remove in data and time
select adddate(now() , interval 2 month); -- it will add months
select adddate(now() , interval 2 day); -- it will add days
select adddate(now() , interval -2 day); -- it will remove days

-- year and month 
select year(now()); -- it will return now year 
select month(now()); -- it will return now month
select day(now()); -- 26 
select date(now()); -- 2025 -09 - 26 
select now(), extract(quarter from now()); -- it will return all date month day year etc.. 
select now() , year(now()) , month(now()) , last_day(now());

-- adddate , now , currenttime , ectract , year , month , date_format 
use sakila;
select * from payment;
select payment_date , year(payment_date) , extract(month from payment_date), date_format(payment_date, 'Hour of shoping in %H') , datediff(payment_date , now()) from payment;