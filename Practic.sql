use himanshu;
create table employee(id int,name varchar(30), salary varchar(30), man_id int);
insert into employee(id,name,salary,man_id) values
(11,"virendra",10000,102),
(12,"Himanshu",14000,104),
(13,"Ansh",16000,102);
select * from employee;

insert into employee values (101,"devansh",23000);

alter table employee modify id int primary key;

drop table manager;

create table manager (m_id int primary key,name varchar(20));
insert into manager(m_id,name) values(101,"Ramesh"),(102,"Ravi"),(104,"Rekha");
select * from manager;

foreign key(man_id) refrence manager(m_id)


