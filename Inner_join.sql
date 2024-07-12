use himanshu;
create table library(L_id int, student_id int,Book varchar(20),order_date date);
insert into library values(101,11,'Python','2024-2-12'),
(102,12,'Java','2024-4-4'),
(103,13,'Math','2024-3-21'),
(104,14,'Science','2024-3-14'),
(105,15,'Hindi','2024-4-17'),
(106,16,'Engkish','2024-4-24'),
(107,17,'Physics','2024-5-14');


select * from library;

create table student( student_id int,student_name varchar(20),address varchar(20));
insert into student values(11,'Ram','Mumbai'),
(12,'Raja','Pune'),
(13,'Himanshu','Mumbai'),
(14,'Pin2','Goa'),
(15,'Devansh','Banglore'),
(16,'Ansh','Pune'),
(17,'Rahul','Hydrabad');

insert into student values(18,'Ravi','Mumbai'),
(19,'Ramesh','Pune'),
(20,'Himanshu','Nasik');

select * from student;

select * from library inner join student ON library.student_id=student.student_id;

select library.student_id,student. student_name,library.Book,library.order_date from library inner join student ON library.student_id=student.student_id;