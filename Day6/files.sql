-- 1. Item_ID, Item_Name and Customer_Name for matching records
SELECT Items.Item_ID, Items.Item_Name, Orders.Customer_Name
FROM Items
INNER JOIN Orders
ON Items.Item_ID = Orders.Item_ID;

-- 2. Order_ID, Customer_Name and Item_Name
SELECT Orders.Order_ID, Orders.Customer_Name, Items.Item_Name
FROM Orders
INNER JOIN Items
ON Orders.Item_ID = Items.Item_ID;

-- 3. All items with order details, including items never ordered
SELECT *
FROM Items
LEFT JOIN Orders
ON Items.Item_ID = Orders.Item_ID;

-- 4. All orders with corresponding item names
SELECT Orders.*, Items.Item_Name
FROM Orders
LEFT JOIN Items
ON Orders.Item_ID = Items.Item_ID;

-- 5. All possible combinations of Items and Orders
SELECT *
FROM Items
CROSS JOIN Orders;

-- 6. Item_Name, Category, Customer_Name and Quantity
SELECT Items.Item_Name, Items.Category,
       Orders.Customer_Name, Orders.Quantity
FROM Items
INNER JOIN Orders
ON Items.Item_ID = Orders.Item_ID;

-- 7. All items and their corresponding Order_ID
SELECT Items.Item_Name, Orders.Order_ID
FROM Items
LEFT JOIN Orders
ON Items.Item_ID = Orders.Item_ID;

-- 8. All orders with Item_Name and Price
SELECT Orders.Order_ID, Items.Item_Name, Items.Price
FROM Orders
LEFT JOIN Items
ON Orders.Item_ID = Items.Item_ID;

-- 9. All items, even if no customer has ordered them
SELECT Items.*
FROM Items
LEFT JOIN Orders
ON Items.Item_ID = Orders.Item_ID;

-- 10. All customers who have ordered products
SELECT DISTINCT Orders.Customer_Name
FROM Orders
INNER JOIN Items
ON Orders.Item_ID = Items.Item_ID;

-- 11. Item_Name, Customer_Name and Order_Date
SELECT Items.Item_Name, Orders.Customer_Name, Orders.Order_Date
FROM Items
INNER JOIN Orders
ON Items.Item_ID = Orders.Item_ID;

-- 12. Order_ID, Item_Name, Price, Quantity and Customer_Name
SELECT Orders.Order_ID, Items.Item_Name, Items.Price,
       Orders.Quantity, Orders.Customer_Name
FROM Orders
INNER JOIN Items
ON Orders.Item_ID = Items.Item_ID;

-- 13. All items with matching orders, including unmatched items
SELECT *
FROM Items
LEFT JOIN Orders
ON Items.Item_ID = Orders.Item_ID;

-- 14. All orders with their matching item details
SELECT *
FROM Orders
LEFT JOIN Items
ON Orders.Item_ID = Items.Item_ID;


-- 1. Salary rounded to 0 decimal places
SELECT ROUND(Salary, 0) FROM Employee;

-- 2. Salary rounded to 1 decimal place
SELECT ROUND(Salary, 1) FROM Employee;

-- 3. CEIL value of salary
SELECT CEIL(Salary) FROM Employee;

-- 4. FLOOR value of salary
SELECT FLOOR(Salary) FROM Employee;

-- 5. Absolute difference between salary and bonus
SELECT ABS(Salary - Bonus) FROM Employee;

-- 6. Remainder when salary is divided by 1000
SELECT MOD(Salary, 1000) FROM Employee;

-- 7. Square of employee age
SELECT POWER(Age, 2) FROM Employee;

-- 8. Square root of employee salary
SELECT SQRT(Salary) FROM Employee;

-- 9. Truncate salary to 1 decimal place
SELECT TRUNCATE(Salary, 1) FROM Employee;

-- 10. Total salary + bonus
SELECT Salary + Bonus AS Total_Amount FROM Employee;

-- 1. Employee names in uppercase
SELECT UPPER(First_Name) FROM Employee;

-- 2. Department names in lowercase
SELECT LOWER(Dept_Name) FROM Department;

-- 3. Length of first name
SELECT LENGTH(First_Name) FROM Employee;

-- 4. Combine first name and last name
SELECT CONCAT(First_Name, Last_Name) FROM Employee;

-- 5. First three characters of employee name
SELECT LEFT(First_Name, 3) FROM Employee;

-- 6. Last three characters of email
SELECT RIGHT(Email, 3) FROM Employee;

-- 7. First five characters of email
SELECT LEFT(Email, 5) FROM Employee;

-- 8. Replace gmail.com with company.com
SELECT REPLACE(Email, 'gmail.com', 'company.com') FROM Employee;

-- 9. Employee names in reverse order
SELECT REVERSE(First_Name) FROM Employee;

-- 10. Position of @ in email
SELECT LOCATE('@', Email) FROM Employee;

-- 11. Full name with space
SELECT CONCAT(First_Name, ' ', Last_Name) FROM Employee;

-- 12. First two characters of department
SELECT LEFT(Dept_Name, 2) FROM Department;

-- 13. Combine employee name and department
SELECT CONCAT(First_Name, ' - ', Dept_Name)
FROM Employee
JOIN Department ON Employee.Dept_ID = Department.Dept_ID;

-- 14. First name uppercase and last name lowercase
SELECT UPPER(First_Name), LOWER(Last_Name) FROM Employee;

-- 15. Count characters in full name
SELECT LENGTH(CONCAT(First_Name, ' ', Last_Name))
FROM Employee;