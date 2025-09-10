-- Question 1: Employees with office details
SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;
-- Question 2: Products with their product line info
SELECT 
    p.productName,
    p.productVendor,
    pl.productLine
FROM products p
LEFT JOIN product lines pl
    ON p.productLine = pl.productLine;
-- Question 3: First 10 orders with customer info
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
