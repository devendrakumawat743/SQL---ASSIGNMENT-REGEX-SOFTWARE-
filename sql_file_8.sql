use regex123;
select * from product;
select * from orders;
-- Inner Join.  --> on
select p.pid ,p.pname, p.price , o.city from product as p
inner join orders on p.pid = orders.productid;

-- left join --> 
select p.pid ,p.pname, p.price , o.productid , o.city from product as p
left join orders as o on p.pid = o.productid;

select o.productid , o.city , p.pid , p.pname , p.price from orders  as o
left join product as p on o.productid = p.pid;

select p.pid ,p.pname, p.price , o.city from product as p
right join orders on p.pid = orders.productid;

use sakila;
select * from actor;
select * from film_actor;

desc actor; --  describe 

select actor.actor_id , actor.first_name , film_actor.actor_id,film_actor.film_id from actor
join film_actor where actor.actor_id = film_actor.actor_id;


drop database regex123;
create database regex123;

use regex123;
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50)
);

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseName VARCHAR(50),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);


INSERT INTO Student (StudentID, StudentName) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Eva'),
(6, 'Frank'),
(7, 'Grace'),
(8, 'Helen'),
(9, 'Ian'),
(10, 'Jack');


INSERT INTO Enrollment (EnrollmentID, StudentID, CourseName) VALUES
(101, 1, 'Math'),
(102, 2, 'Physics'),
(103, 3, 'Chemistry'),
(104, 1, 'English'),
(105, 5, 'Biology'),
(106, 7, 'History'),
(107, 10, 'Math');

use Student;
select * from Enrollment;