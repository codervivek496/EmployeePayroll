--Welcome to EmployeePayroll Problem

--UC1 create EmployeePayroll Database
create database employee_Payroll

use Employee_Payroll;

--Create Employee_Payroll Table
create table employee_Payroll(
--id is incremented by one and stating from 1, primary key(unique and not null)
id int identity(1,1) primary key,
--name is not null
name varchar(200) not null,
--salary is not null
salary int not null,
--startdate stores dates which is not null
startdate date not null,
);