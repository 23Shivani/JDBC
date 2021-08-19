show databases;
create database AddressBookService;
use AddressBookService;
create table AddressBookTable(Fname varchar(10),Lname varchar(11),address varchar(100),city varchar(20),state varchar(20),zip int,phoneNum varchar(10),email varchar(20));
desc AddressBookTable;
insert into AddressBookTable values('shivani','gharve','panvel ','navi mumbai','maharastra',410206,'9511827505','ghavers@gmail.com');
select * from AddressBookTable;
insert into AddressBookTable values('neha','shahid','mumbra','mumbai','maharastra',400612,'484545142','sneha@gmail.com');
insert into AddressBookTable values('abhijeet','suryawansi','alani','osmanabad','maharastra',413501,'455651846','sabhi@gmail.com');
insert into AddressBookTable values('gitesh','sewale','nagpur ','nagpur','maharastra',440002,'48956876541','gitesh@gmail.com');
select * from AddressBookTable;

update AddressBookTable set phoneNum='8855220011' where Fname ='shivani';
delete from AddressBookTable where Fname='shivani';

select * from AddressBookTable where city='panvel';
select count(city) from AddressBookTable where city='panvel' group by city;
select * from AddressBookTable order by city asc;
select * from AddressBookTable order by city desc;
alter table AddressBookTable add column type varchar(20); 

update AddressBookTable set type='friends' where Fname='shivani';

select count(type) from AddressBookTable where type='friends' group by type;
