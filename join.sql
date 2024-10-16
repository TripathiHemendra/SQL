use himanshu;
create table orders(
order_id int primary key,
product_name varchar(20),
price float);

create table person(
name varchar(20),
address varchar(20),
order_code int,
foreign key(order_code) references orders(order_id)
);

insert into orders values
(101,'Sugar',34),
(102,'Rice',73),
(103,'Namkeen',64),
(104,'Soop',20),
(105,'Cumputer',20000),
(106,'mobile',1500),
(107,'Boll',65);

insert into person values
('Ansh','Mumbai',104),
('Aman','Pune',105),
('Vijay','Bangal',104),
('Riya','Nasik',103),
('Sanu','Bhopal',101),
('Sagar','Kasmeer',101),
('Nikhil','Banglore',106),
('Shraddha','Mumbai',102),
('Pintu','Pune',105);

select * from person;

select * from orders inner join person on orders.order_id=person.order_code;


select count(distinct address) from person;

select * from person where name like '[anv]%';