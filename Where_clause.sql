use himanshu;
select * from customers;
select * from customers where address="mumbai";
select * from customers where address LIKE 'P%';
insert into customers values(107,'Devansh','Ameria','Patna',300026);
select * from customers where address LIKE 'P%a';
select * from customers where costumer_id BETWEEN 101 AND 104;
select * from customers where country in ("Pakistan");
