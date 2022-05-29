create database edyoda_assignment;
use edyoda_assignment;	

create table sales_person (snum int not null, sname varchar(60) unique, city varchar(60), comm int, primary key (snum));

insert into sales_person values (1001, 'Peel','London',12);
insert into sales_person values (1002, 'Serres','Sanjose',13);
insert into sales_person values (1004, 'Motika','London',11);
insert into sales_person values (1007, 'Rifkin','Barcelona',15);
insert into sales_person values (1003, 'Axelrod','NewYork',10);

select * from sales_person;


create table customers (cnum int not null, cname varchar(60) unique, city varchar(60) not null, snum int, primary key (cnum));

insert into customers values (2001, 'Hoffman','London',1001);
insert into customers values (2002, 'Giovanni','Rome',1003);
insert into customers values (2003, 'Liu','Sanjose',1002);
insert into customers values (2004, 'Grass','Berlin',1002);
insert into customers values (2006, 'Clemens','London',1001);
insert into customers values (2007, 'Cisneros','Sanjose',1007);
insert into customers values (2008, 'Pereira','Rome',1004);


create table orders (onum int not null, Amt varchar(60), Odate varchar(60), cnum int, snum int, primary key (onum));


insert into orders values (3001, 18.69, '3-10-1990' ,2008,1007);
insert into orders values (3003, 767.19,'3-10-1990',2001,1001);
insert into orders values (3002, 1900.10,'3-10-1990',2007,1004);
insert into orders values (3005, 5160.45,'3-10-1990',2003,1002);
insert into orders values (3006, 1098.16,'3-10-1990',2008,1007);
insert into orders values (3009, 1713.23,'4-10-1990',2002,1003);
insert into orders values (3007, 75.75,'4-10-1990',	2004,1002);
insert into orders values (3008, 4273.00,'5-10-1990',2006,1001);
insert into orders values (3010, 1309.95,'6-10-1990',2004,1002);
insert into orders values (3011, 9891.88,'6-10-1990',2006, 1001);

select * from orders;

# Sql Queries 

# Count the number of Salesperson whose name starts with 'A' or 'a'
select * from sales_person;
select * from sales_person where sname like 'a%';

# Display all the salesperson whose all orders worth is more than Rs. 2000
select * from sales_person;
select * from orders;
select a.sname, b.Amt from sales_person a inner join orders b
on a.snum = b.snum where b.Amt > 2000;


# Count the number of Salesperson belonging to NewYork
select count(*) as Count_NewYork from sales_person where city = 'NewYork';


# Display the number of sales person belonging to London and Paris 
select count(*) as Count_London from sales_person where city = 'London';

# Display the number of orders taken by each Salesperson and their date of orders
select a.sname, b.Odate from sales_person a inner join 
orders b on a.snum = b.snum





