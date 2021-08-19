show databases;
create database payroll_service;
use payroll_service;
create table employee_payroll( id int primary key auto_increment, name varchar(15), salary int, start_Date date );
desc employee_payroll;
insert into employee_payroll(name,salary,start_Date) values('SHIVANI', 55000, 19/09/2021);
select * from employee_payroll;
update employee_payroll set start_Date= '2021-09-19' where id=1;
insert into employee_payroll(name,salary,start_Date) values('NEHA',60000,'2019-10-20');
insert into employee_payroll(name,salary,start_Date) values('ABHI', 55000,'2018-05-13');
insert into employee_payroll(name,salary,start_Date) values('GITESH', 45000,'2021-08-30');
select salary from employee_payroll where name='SHIVANI';
select * from employee_payroll where start_Date between '2020-01-01' and '2022-01-01';
alter table employee_payroll add column gender varchar(1);
update employee_payroll set gender ='m' where id=1;
update employee_payroll set gender ='f' where name = 'NEHA';
update employee_payroll set gender ='f' where id=3;

select sum(salary) from employee_payroll where gender = 'f' group by gender;
select sum(salary) from employee_payroll where gender = 'm' group by gender;

select avg(salary) from employee_payroll where gender = 'f' group by gender;
select min(salary) from employee_payroll where gender = 'm' group by gender;
select max(salary) from employee_payroll where gender = 'm' group by gender;
select count(salary) from employee_payroll where gender = 'm' group by gender;