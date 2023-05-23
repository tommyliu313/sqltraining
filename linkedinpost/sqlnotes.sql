#https://media.licdn.com/dms/document/media/D561FAQFkXepW4feEOQ/feedshare-document-pdf-analyzed/0/1684336480519?e=1685577600&v=beta&t=h9IbzRELxWRh1J-ZEs--2sj4lNwlLjP7xuGXRzYDa-c

/*CASE Statement*/
SELECT FirstName, LastName, Age,
CASE
   WHEN Age > 30 THEN 'Old'
   WHEN Age BETWEEN 27 AND 30 THEN 'Young'
   ELSE 'Baby'
END

/*Procedure*/
CREATE PROCEDURE Temp_Employee
@JobTitle nvarchar(100)
AS
DROP TABLE IF EXISTS
CREATE TABLE Temp_Employee(
   JobTitle varchar(100),
   EmployeesPerJob int,
   AvgAge int,
   AvgSalary int
)

/*View*/
CREATE VIEW CustomerView AS
SELECT customerfirstname + ' ' + customerlastname as LiuChakTin,
customerphonenumber,
inventoryname, saledate, salequantity.saleunitprice, salequantity*saleunitprice as total
FROM customer inner join sale on customer.customerid = sale.customerid inner join inventory
on sale.inventoryid = inventory.inventoryid

/*CTE*/
WITH CTE_Employee AS
(
   SELECT FirstName, LastName, Gender, Salary,
          COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
   FROM EmployeeDemographics ED
   JOIN
)

/*UNIONS*/
SELECT cust_lname.cust_fname FROM customer
UNION
SELECT cust_lname.cust_fname FROM customer_2

/*UNION ALL*/
SELECT cust_lname.cust_fname FROM customer
UNION ALL
SELECT cust_lname.cust_fname FROM customer_2

/*Intersect*/
SELECT cust_lname.cust_fname FROM customer
intersect
SELECT cust_lname.cust_fname FROM customer_2

/*Except*/
SELECT cust_lname.cust_fname FROM customer
except
SELECT cust_lname.cust_fname FROM customer_2

/*ROW NUMBER*/
SELECT *, ROW_NUMBER() OVER(ORDER BY Salary DESC) SalaryBank FROM EmployeeSalary


