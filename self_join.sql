use himanshu;
create table employee1(E_id int,name varchar(20),manager_id int);
insert into employee1 values(101,'Ram',104),
(102,'Raja',101),
(103,'Himanshu',103),
(104,'Pin2',104),
(105,'Devansh',103),
(106,'Ansh',102),
(107,'Rahul',101);

drop table employee1;

select * from employee1;

select a.E_id,b.name,a.name as manager_name from employee1 as a join employee1 as b ON a.E_id = b.manager_id;
