Welcome to payroll service

--UC1--
-------Create DataBase------
CREATE DATABASE payroll_service;
USE payroll_service;


--UC2--
---Create table for DataBase---
CREATE TABLE employee_payroll(
id int not null,
name varchar(20) not null,
salary float not null,
startdate date not null
);


--UC3--
---Insert table in database---
insert into employee_payroll values
(1,'Ashish',100000.00,'2021-04-03'),
(2,'Abhi',200000.00,'2020-05-22'),
(3,'Ani',300000.00,'2019-06-19');



--UC4--
---Retrieve data from table
select * from employee_payroll;




