use himanshu;
select * from customer;
set sql_safe_updates=0;
delete from customer where customer_name='rahul';
update customers set country='England' where customer_id=106;
 
alter table customers rename column address to location;
alter table customers add column age int;
alter table customers drop column age;
alter table customers modify column age varchar(10);
alter table customers rename  to customer;