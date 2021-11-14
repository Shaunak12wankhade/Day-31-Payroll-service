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

--UC7--
---Calculate sum,avergae,min,max,count of employee---

select SUM(Salary) as TotalSalary,Gender from employee_payroll group by Gender;
select AVG(Salary) as AverageSalary from employee_payroll group by Gender;
select count(Salary) as TotalSalary,Gender from employee_payroll group by Gender;
select Min(Salary) as MinSalary,Gender from employee_payroll group by Gender;
select Max(Salary) as MaxSalary,Gender from employee_payroll group by Gender;


--Uc8--
---Extend table to store Phonenumber,Department & Address---
alter table employee_payroll add PhoneNumber bigint;
alter table employee_payroll add Department varchar(250) not null default 'HR';
alter table employee_payroll add Address varchar(250) default 'Nagpur';
select * from employee_payroll;


--UC9--
---Extend table to have Basic pay,Deduction,Taxable pay,Income tax & Net pay---
Exec sp_rename 'employee_payroll.Salary', 'BasicPay';
alter table employee_payroll add TaxablePay float, Deduction float,IncomeTax float,NetPay float;

select * from employee_payroll;


--UC10--
---Insert another table---
insert into employee_payroll(id,Name,BasicPay,Startdate,Gender,PhoneNumber,Department,Address,TaxablePay,Deduction,IncomeTax,NetPay)
 values(4,'Terissa','525245','2018/09/05','F','7345787969','Sales','Chennai','1000','4000','200','522245');

insert into employee_payroll(id,Name,BasicPay,Startdate,Gender,PhoneNumber,Department,Address,TaxablePay,Deduction,IncomeTax,NetPay)
values(5,'Terissa','525245','2018/09/05','F','7345787969','Marketing','Chennai','2000','5000','300','622245');

 select * from employee_payroll;

