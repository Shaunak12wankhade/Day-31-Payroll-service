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
(1,'Ashish',100000,'2021-04-03'),                  --Format of date is Year-Month-Date
(2,'Abhi',200000,'2020-05-22'),
(3,'Ani',300000,'2019-06-19');



--UC4--
---Retrieve data from table
select * from employee_payroll;


--UC5--
---Retrieve specific data---
select name, salary from employee_payroll where name = 'Abhi';     --selecting 'Abhi' entry
select * from employee_payroll where startdate between cast('2020-01-01' as date) and getdate();                                                                 -- Cast is used to convert string as date is in string into date (int)


--Uc6--
---Alter the table to add gender---
alter table employee_payroll add Gender char(1);
update  employee_payroll set Gender ='M' where name = 'Ashish';

select * from employee_payroll;





--select id,name,salary,startdate From employee_payroll;             -- taken from VS of ADO.net day 33

