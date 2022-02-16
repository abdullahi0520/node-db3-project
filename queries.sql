-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT productname, categoryname FROM product AS pro LEFT JOIN category AS cat on pro.categoryid = cat.id
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT id, companyname FROM 'order' AS o LEFT JOIN shipper AS s ON s.id = o.shipvia WHERE o.orderdate < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT productname, quantity FROM orderdetail as O LEFT JOIN product AS p ON p.id = o.productid WHERE orderid = 10251 ORDER BY productname
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.id as ID, c.companyname companyname, e.lastname AS lastname FROM 'Order' AS o JOIN customer AS C ON o.customerid = c.id JOIN employee AS e  ON o.employeeid = e.id