use himanshu;
select * from customers order by address;
insert into customers(Costumer_id,customer_name,country,address,pincode)values
(106,'Ravi','Kanada','Imfal',400072),
(107,'Virendra','Pakistan','Pok',786),
(108,'Raj','India','Pune',120045),
(109,'Ramesh','India','Kasmeer',120045),
(110,'Shivay','India','mumbai',400072);
select * from customers;
select * from customers where country="India" AND address LIKE 'P%';
select * from customers where country="India" Or address LIKE 'P%';
select * from  customers  where NOT  country="India" ;

-- change the column name queary--
alter table customers change column costumer_id customer_id int;
insert into customers(Customer_id,customer_name,country,address,pincode)values
(106,'Ravi','Kanada',Null,400072);

select * from customers where  address is null;
select * from customers where  address is not null;
 
update customers set customer_name="rahul" where customer_id = 106;
SET SQL_SAFE_UPDATES = 0;

SELECT * FROM customers LIMIT 3;

select * from customers country LIMIT 5 ;
select * from customers order by customer_id LIMIT 5,10  ;