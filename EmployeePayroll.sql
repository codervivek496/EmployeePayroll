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

--UC7 use aggregate functions
select gender, sum(salary) from employee_Payroll where gender = 'M' group by gender;

select gender, avg(salary) from employee_Payroll where gender = 'F' group by gender;

select gender, avg(salary) from employee_Payroll group by gender;

select gender, count(*) from employee_Payroll  group by gender;

select min(salary) as "Lowest_Salary" from employee_Payroll;

select max(salary) "Highest_Salary" from employee_Payroll;

--UC8 Extend employee_Payroll
Alter table employee_payroll add phone bigint;

alter table employee_Payroll add address varchar(300) default 'Patna';

alter table employee_payroll add department varchar(100) default 'Development';

update employee_Payroll
set phone = 9931532761, address = 'Sasaram', department = 'Reception'
where name = 'Sudhanshu';


update employee_Payroll
set phone = 9931532762, address = 'Hyderabad', department = 'IT'
where name = 'Vivek';


update employee_Payroll
set phone = 9931532763, address = 'Delhi', department = 'Account'
where name = 'Sonu';


update employee_Payroll
set phone = 9931532764, address = 'Patna', department = 'IT'
where name = 'Aaradhya';


update employee_Payroll
set phone = 9931532761, address = 'Kurukshetra', department = 'HR'
where name = 'Vanshika';

select * from employee_Payroll

alter table employee_payroll alter column salary float;

-- UC9 Extend pays

-- changing salary column name to base_pay
Exec sp_rename 'employee_payroll.salary', 'base_pay', 'COLUMN';

alter table employee_payroll add deductions float, taxable_pay float, income_tax float, net_pay float

update employee_payroll set deductions = 100, taxable_pay = 1000, net_pay = base_pay - 500, income_tax = (0.12)*base_pay where name = 'Sudhanshu';

update employee_payroll set deductions = 100, taxable_pay = 1000, net_pay = base_pay - 600, income_tax = (0.15)*base_pay where name = 'Vivek';

update employee_payroll set deductions = 100, taxable_pay = 1000, net_pay = base_pay - 700, income_tax = (0.16)*base_pay where name = 'Sonu';

update employee_payroll set deductions = 100, taxable_pay = 1000, net_pay = base_pay - 650, income_tax = (0.14)*base_pay where name = 'Aradhya';

update employee_payroll set deductions = 100, taxable_pay = 1000, net_pay = base_pay - 650, income_tax = (0.14)*base_pay where name = 'Vanshika';