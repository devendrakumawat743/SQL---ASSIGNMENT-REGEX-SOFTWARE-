/*
-------------------------------------------------------
--> Student Table 

student_id 	student_name
   1	 	 	Raj 
   2 			Anita
-------------------------------------------------------
student_id	Course
1			Math
1			English
2			Englis
2			Math

foren Kye --> there can be muliple table (1 Table Me Multiple table Ho Skhti hai )

1). primary key --> A primary key is a column or a set of columns in a table that uniquely identifies each row and does not allow NULL values.
2). Super Key --> A super key is a set of one or more columns that can uniquely identify each row in a table.
3). candidate key A candidate key is a minimal set of columns that can uniquely identify each row in a table, with no redundant attributes.
4). foreign key--> A foreign key is a column or a set of columns in one table that refers to the primary key in another table. It is used to establish and enforce a relationship between the two tables. (replationship with the primary key  and foregin key based on another table )
*/
create database  regex123;
use regex123;
create table product(pid  int,  pname  varchar(20), price int);
insert into product values(100,'iphone',4000), (101,'mi tv', 3000),
(102,'fridge',5000), (103,'cover',500);


create table orders( orderid int, city varchar(20), productid int);
insert into orders values(994,'jaipur', 100),(995,'goa',102), (996,'J&K', 100), (997,'japan',102),
(998,'bhutan', 110);

-- pid is primary key

select * from product;

-- orderid is a primary key , productid is foregin key that refer to primary key of product table
select prd.pid, prd.pname from product as prd;
select ord.productid , ord.city from orders as ord;

-- 2 Tables 2 Add Krne ke liye Join ka use krte hai. 
select prd.pid , prd.pname , ord.productid , ord.city from product as prd join orders as ord where prd.pid = ord.productid;
-- Both Are Same Methods 
select product.pid , product.pname , product.price from product 
join 
orders where product.pid = orders.productid;

-- inner join --  is a type of join where we combine 1 or more table based on same common values (pid,productid(same column value)).
/*
kl kya pdnba
Q1. types of join in Sql 
Q2.  super , candidate, composit , primary , foregin , unique . 
----> Normalization in Sql --> 1NF And 2NF. 
*/

/*
Q1. Super Key
👉 A set of one or more columns that can uniquely identify a record.

2. Candidate Key
👉 Minimal super key — means no extra column.

3. Primary Key
👉 A unique and non-null column used to identify each record.

4. Foreign Key
👉 A key that links two tables together. It refers to the Primary Key of another table.

5. Composite Key
👉 A combination of two or more columns used to uniquely identify a record

6. Unique Key
👉 Ensures that all values in a column are different (unique), but allows one NULL value.

Normalization in SQL -->

1NF (First Normal Form)

Rule:
Each cell should contain only atomic (single) value.
There should be no repeating groups or arrays.

| Student  | Subjects      |
| -------- | ------------- |
| Devendra | Math, English |

After 1NF:
Student |	Subject |
Devendra |	Math   |
Devendra |	English  |

2NF (Second Normal Form)
Rules:
Table must be in 1NF.
There should be no partial dependency (i.e., no attribute should depend on part of a composite key).
*/