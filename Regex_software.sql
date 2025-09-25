use sakila;
select * from sakila.actor;
-- Q1. From the actor table get the first_name and actor_id who is last_name genius .

select first_name , actor_id  from actor  where last_name ='GUINESS';

-- Q2.  get the actor_id and the first_name where the actor_id is from value 3 to 18 or the name not shoud be ED .
 
SELECT actor_id , first_name from actor WHERE (actor_id >3 AND actor_id<=18) or FIRST_NAME != 'ED';

-- Q3. get the last_name actor_id and first_name where the firtst name is either nick or GRACE .
select last_name , actor_id ,first_name where first_name = 'NICK' and first_name='GRACE';
-- Q4 . Get all the colums where the actor_id is form 2 to 6 or actor_id is greater than 5 .
select * from actor where (actor_id>2 and actor_id<=6) or actor_id>5;

-- like operator (pattern ke according data filter )

select * from actor;
-- % (persentage / wildcard character) Zero or more character 

-- N Se start hone wale pura name find krne ke liye .
select * from actor where first_name like 'N%';
select * from actor where first_name like 'T%';

-- end %xyz hona chaiye 

select * from actor where first_name like 'T%S';

-- %s% khi pr aaye sare names return krega. jisme s hoga whi 
select * from actor where first_name like '%S%';

-- (_) : Exactly 1 character .
select * from actor where first_name like 'A_';
select * from actor where first_name like 'A__';
select * from actor where first_name like 'A___';
select * from actor where first_name like 'A___%';
select * from actor where first_name like 'A___%';
select * from actor where first_name like '_A%';
select * from actor where first_name like '_D%';

-- Q1. Get the actor_id and first_name where the last word should  be Te.
select actor_id , first_name from actor where first_name like '%TE';

-- Q2. first_name where latter NN should be prsent in middle 
select actor_id , first_name from actor where first_name like '_%NN%_';

-- Q3. Get the first name and last name where the last name coloumn the first world is B the and the second last world R
select first_name , last_name from actor where first_name like 'B%R_'; 
-- Q4.  get all the user info where the first name will have minium 4 characters
select first_name from actor where first_name like '____%';
-- Q5. get all the columns wherer the acotor_id is 1 to 90 and the first name s should be in the middle a should be the last second character .
select * from actor where (actor_id between 2 and 90) and  first_name like '_%S%A_';

-- Function. (in-bulit functions)
-- (1). scaler function (row function) (2). Multi Row Function
-- (1). scaler function -> apply on each row and return the output for each row
-- total character in each first name
select first_name , char_length(first_name) , lower(first_name) from actor; -- it will return length
select first_name , last_name ,concat(first_name , ' ' ,last_name) from actor; -- it will connect two columns.
select first_name , last_name ,concat(' Mr/ MRS',' ',first_name , ' ' ,last_name) from actor;
select first_name , last_name ,concat_ws(' ',first_name ,last_name) from actor; -- concat_ws() isme seprater phele likha jata hai 

-- substr ( to extract some data)
-- column starting_position , total character.alter

select first_name , substr(first_name,3) from actor;
select first_name , substr(first_name,1,3) from actor;
select first_name , substr(first_name,3,2) from actor;
select first_name , substr(first_name,-4,2) from actor;
