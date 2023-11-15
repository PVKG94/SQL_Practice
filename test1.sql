use mydata
create table students(
name varchar(20),
department varchar(40),
marks_scored int
)
alter table students add column city varchar(15)
alter table students change marks_scored marks int
alter table students change city city int 
create database hi
drop database hi
create table newone(well int)
drop table newone

alter table students change city age int

create table fruit(
name varchar(100),
price int
)

select * from fruit
insert into fruit values("apple",340)
insert into fruit values("mango",200)
insert into fruit values("grape",60)
insert into fruit values("banana",30)

update fruit set price=100
update fruit set price=150 where name="apple"
update fruit set name="orange" where name="banana"
update fruit set price=80 where name="mango"
delete from fruit where name="grape"

//Exercise

create table customer(
customer_id int,
customer_name varchar(100),
customer_address varchar(100),
city varchar(100),
state varchar(100),
zip_code int
)
select * from customer
insert into customer values(1,"John Doe","392 Sunset Blvd","Newyork","NT",10059)

insert into customer values(2,"Mary Smith","690 Main Street","San Francisco","CA",94032);
insert into customer values(3,"Richard Newman","240 Riverside Road","San Diego","CA",92010);
insert into customer values(4,"Cathy Cook","4010 Speedway","Tucson","AZ",85719)

alter table customer change customer_address address varchar(100)
alter table customer change column address cus_address varchar(100)

alter table customer add column mobile_number int
delete from customer where mobile_number=null //doesnt affect
delete from customer where mobile_number is null

alter table customer change mobile_number mobile_number varchar(100)
insert into customer values(1,"John Doe","392 Sunset Blvd","Newyork","NT",10059,"7551930402");
insert into customer values(2,"Mary Smith","690 Main Street","San Francisco","CA",94032,"6587290746");
insert into customer values(3,"Richard Newman","240 Riverside Road","San Diego","CA",92010,"1538409774");
insert into customer values(4,"Cathy Cook","4010 Speedway","Tucson","AZ",85719,"0962448653");
insert into customer values(5,"Alice Johnson","123 Oak Street","San Diego","CA",90001,"9461938654");
insert into customer values(6,"Bob Williams","456 Elm Avenue","Chicago","IL",60601,"5559847590")

select * from customer
select city from customer
select cus_address from customer
select city,state from customer

update customer set mobile_number="82206-1234" where customer_name="Mary Smith"

delete from customer where zip_code=60601

select * from customer where state="CA"
select * from customer where customer_id>3
select * from customer where customer_id<2

alter table customer drop column mobile_number

truncate table customer

//aggregate functions

create table stud(
name varchar(100),
marks int,
dep varchar(100)
)

insert into stud values("Praveen",1,"CSE");
insert into stud values("Manoj",2,"MECH");
insert into stud values("Karthi",3,"ECE");
insert into stud values("Raju",4,"MECH");
insert into stud values("Deepak",5,"CSE")

select * from stud
select sum(marks) from stud
select sum(marks) as totalmarks from stud
select max(marks) from stud
select min(marks) as minimum from stud
select avg(marks) from stud
select count(name) from stud
select * from stud where dep="MECH"
select name from stud where dep="MECH"
select count(name) from stud where dep="MECH"

create table student(
name varchar(100),
mark int,
department varchar(200)
);
insert into student values("Barath",67,"CSE");
insert into student values("Venkat",89,"ECE");
insert into student values("Praveen",23,"MECH");
insert into student values("Abdul",63,"CSE");
insert into student values("Kathir",88,"CSE");
insert into student values("John",81,"MECH");
insert into student values("Manoj",91,"CSE");
insert into student values("Mani",50,"ECE")

select * from student
select name,mark from student
select name,mark from student order by mark asc
select name,mark from student order by mark desc

select sum(mark) from student group by department
select sum(mark),department from student group by department

select count(name),department from student group by department
select count(name),department from student group by department order by count(name)


create table employee(
id int,
first_name varchar(100),
last_name varchar(100),
department varchar(100),
salary int
);

insert into employee values(1,"John","Doe","HR",55000);
insert into employee values(2,"Jane","Smith","IT",60000);
insert into employee values(3,"Bob","Johnson","IT",62000);
insert into employee values(4,"Alice","Williams","HR",54000);
insert into employee values(5,"Eva","Davis","Finance",58000);
insert into employee values(6,"Mike","Brown","Finance",59000);

select * from employee
truncate employee

insert into employee (id,first_name,last_name,department,salary) values
(1,"John","Doe","HR",55000),
(2,"Jane","Smith","IT",60000),
(3,"Bob","Johnson","IT",62000),
(4,"Alice","Williams","HR",54000),
(5,"Eva","Davis","Finance",58000),
(6,"Mike","Brown","Finance",59000);

select * from employee order by last_name asc

select * from employee where department="IT" order by salary desc

select count(*),department from employee group by department

select avg(salary),department from employee group by department order by department asc

select avg(salary),department from employee group by department order by avg(salary) desc limit 1

//we can write like these

select avg(salary),department 
from employee 
group by department 
order by avg(salary) desc 
limit 1

select * from employee
select salary,department from employee where salary<60000 order by salary desc
select avg(salary),department from employee group by department having avg(salary)<60000
select count(first_name),department from employee group by department having count(first_name)>2
select avg(salary),department from employee group by department having avg(salary)>55000
select avg(salary),department from employee group by department having avg(salary)>55000 or count(*)>2

create table student1(
id int,
name varchar(100),
age int
)

select * from student1
alter table student1 add column grade varchar(100)   //add column or add 
alter table student1 change grade finalgrade varchar(100)
alter table student1 rename column finalgrade to Finalgrade 

insert into student1 (id,name,age,Finalgrade) values
(101,'John Doe',20,'A'),
(102,'Jane Smith',22,'B'),
(103,'Bob Johnson',19,'C'),
(104,'Alice Brown',21,'A'),
(105,'Charlie Davis',20,'B'),
(106,'Emma Wilson',23,'A'),
(107,'Michael Lee',20,'C'),
(108,'Olivia Moorie',19,'B'),
(109,'William Turner',21,'A'),
(110,'Sofia Rodriguez',22,'C')

update student1 set age=21 where id=101
delete from student1 where id=101

select * from student1 where age>=19
select * from student1 where name='William Turner' or name="Alice Brown"
select * from student1 where name in ('William Turner',"Alice Brown")
select * from student1 where Finalgrade in ('A','B') and age>=20
select * from student1 where age between 18 and 20
select * from student1 where age<18
select * from student1 where Finalgrade>'A'
select count(*) from student1
select avg(age) from student1
select sum(age) from student1 where Finalgrade in ('A',"B")
select avg(age) from student1 where Finalgrade in ('A',"B")
select count(*),Finalgrade from student1 group by Finalgrade order by Finalgrade desc
select avg(age),Finalgrade from student1 group by Finalgrade order by Finalgrade asc

select * from student1
insert into student1 values(111,'John',25,'C')

select count(*),Finalgrade from student1 group by Finalgrade order by count(*) desc limit 1
select avg(age),Finalgrade from student1 group by Finalgrade having avg(age)>21
select count(*),Finalgrade from student1 group by Finalgrade having count(*)>3
select avg(age),Finalgrade from student1 group by Finalgrade having avg(age) between 20 and 21

select * from student1 order by age asc
select * from student1 where Finalgrade in ('A','B') order by age desc
select * from student1 where Finalgrade='A' or Finalgrade='B' order by age desc
select * from student1 order by Finalgrade asc

//Primary Key

create table books(
book_id int,
title varchar(100)
);

create table authors(
author_id int,
author_name varchar(100)
);

insert into books (book_id,title) values (1,'bookone'),(2,'booktwo'),(3,'bookthree');
insert into authors (author_id,author_name) values (1,'John'),(2,'Praveen'),(3,'Monika');

select * from books
select * from authors

insert into books values(3,'bookfour')
delete from books where title='bookfour'

alter table books add constraint pk_bookid primary key(book_id)
insert into books values(3,'bookfour')
update books set book_id=null
alter table books add constraint pk_title primary key(title)  //one table should contain only one primary key

drop table books
create table books(
book_id int primary key,
title varchar(100)
);

alter table authors add constraint pk_author_title primary key(author_id)
update authors set author_id=null

