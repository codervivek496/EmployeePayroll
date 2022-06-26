--Welcome to EmployeePayroll Problem

--UC1 create EmployeePayroll Database
create database employee_Payroll

use Employee_Payroll;

--UC2  Create Employee_Payroll Table
create table employee_Payroll(
--id is incremented by one and stating from 1, primary key(unique and not null)
id int identity(1,1) primary key,
--name is not null
name varchar(200) not null,
--salary is not null
salary int not null,
--startDate stores dates which is not null
startDate date not null,
);

--UC3 Insert Data into table employee_payroll
insert into employee_Payroll values
('vanshika', 50000, '2020-10-15'),
('Sudhanshu', 60000, '2019-10-12'),
('Vivek', 80000, '2019-04-05'),
('Sonu', 90000, '2004-05-09'),
('Aradhya', 70000, '2021-09-01');

--UC4 Retrieve all data we have inserted into the employee_Payroll
select * from employee_Payroll

--UC5
-- Retrieve data of a particular employee
select salary from employee_Payroll where name = 'vivek'

--where condition for data
select * from employee_Payroll where startDate between CAST('2018-01-01' AS Date) and GETDATE();

--UC6
--Alter Table
alter table employee_Payroll add gender char(1);

--update each row
update employee_Payroll set gender = 'M' where name = 'Sudhanshu' or name = 'Vivek' or name = 'Sonu';

update employee_Payroll set gender = 'F' where name  = 'Vanshika' or name = 'Aradhya';
