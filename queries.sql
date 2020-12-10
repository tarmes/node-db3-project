-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select
	p.id,
	p.productname,
	c.categoryname
from product p
join category c
	on c.id = p.categoryid;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select
   o.id,
   s.companyname
from "order" o
join shipper s
   on o.shipvia = s.id
where orderdate < "2012-08-09";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select
   od.orderid,
   od.quantity,
   p.productname
from orderdetail od
join product p
   on od.productid = p.id
where orderid = 10251
order by p.productname asc;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select
   o.id as OrderID,
   c.companyname as CustomerCompanyName,
   e.lastname as EmployeeLastName
from "order" o
join customer c
   on o.customerid = c.id
join employee e
   on o.employeeid = e.id;

