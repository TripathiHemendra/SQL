use himanshu;
create table customers(Costumer_id int,customer_name varchar(100),country varchar(20),address varchar(50),Pincode int);
desc customers;
insert into customers(Costumer_id,customer_name,country,address,pincode)values
(101,'Ansh','India','mumbai',400072),
(102,'Virendra','Pakistan','Lahoor',786),
(103,'Himanshu','India','Pune',120045),
(104,'Rudra','India','Pune',120045),
(105,'Saransh','India','mumbai',400072);
select * from customers;
select customer_name from customers;
-- distinct means different values--
select distinct country from customers; 






