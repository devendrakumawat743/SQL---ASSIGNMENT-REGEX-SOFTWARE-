-- STRING FUNCTION 
use sakila;
SELECT * FROM actor;
SELECT first_name ,lower(first_name) from actor; -- it will be return string in lower case
SELECT first_name ,length(first_name) from actor; --  it will be return len of a string  in bytes
 
 
-- DUMY TABLE (1 ROW & 1 COLUMN )
select 2*2 from dual ;

