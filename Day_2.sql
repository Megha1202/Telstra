create database bootca;
use bootca;
create table employee(id int,name varchar(30),age int,dept varchar(30),salary float);

insert into employee values(1,'john',34,'hr',45555.87);
insert into employee values(2,'raj',56,'sde',48555.87);
insert into employee values(3,'dayle',67,'sde2',85555.87);
select id,name from employee;
select* from employee;
select id,name from employee where id=2;
select name,salary,salary+5000 as bonus,salary/30 as perday from employee;
select * from employee where dept='hr';
select * from employee where dept<>'hr';
select * from employee where dept='hr' and age<30;
select * from employee where salary between 40000 and 50000;
update employee set dept='tester' where id='2';
select* from employee;
select * from employee where name like 'o%';
select * from employee where name like '%o';
create table test1 like emp;
select * from employee
where salary > (select salary from empy where name='megha');

select * from employee
where salary > (select salary from empy where dept='tester');

select * from employee where salary in(52000,53000,62000);
select * from employee
where salary > any
(select salary from employee where dept='gnt');

select * from employee
where salary > all
(select salary from employee where dept='gnt');








