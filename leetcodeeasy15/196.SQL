-- DELETE DUPLICATE EMAILS 
SELECT Customers.name as Customers
FROM Customers 
LEFT JOIN Orders
ON Customers.id = Orders.customerId
WHERE Orders.customerId IS NULL;