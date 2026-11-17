
Q1. Display items supplied by ABC Traders.
SELECT * FROM Items
WHERE Supplier = 'ABC Traders';


Q2. Display items whose status is Available.
SELECT * FROM Items
WHERE Status = 'Available';


Q3. Display items whose price is equal to 2500.
SELECT * FROM Items
WHERE Price = 2500;


2. AND, OR, NOT Operators
Q4. Display Electronics items with a price greater than 10000.
SELECT * FROM Items
WHERE Category = 'Electronics' AND Price > 10000;


Q5. Display items whose category is Furniture OR Stationery.
SELECT * FROM Items
WHERE Category = 'Furniture' OR Category = 'Stationery';


Q6. Display items that are NOT Available.
SELECT * FROM Items
WHERE NOT Status = 'Available';


Q7. Display items whose price is greater than 1000 AND quantity is greater than 10.
SELECT * FROM Items
WHERE Price > 1000 AND Quantity > 10;


3. BETWEEN Operator
Q8. Display items whose price is between 1000 and 10000.
SELECT * FROM Items
WHERE Price BETWEEN 1000 AND 10000;


Q9. Display items whose quantity is between 10 and 50.
SELECT * FROM Items
WHERE Quantity BETWEEN 10 AND 50;


Q10. Display items added between 2026-02-01 and 2026-03-01.
SELECT * FROM Items
WHERE Date_Added BETWEEN '2026-02-01' AND '2026-03-01';


Q11. Display items whose price is NOT BETWEEN 500 and 5000.
SELECT * FROM Items
WHERE Price NOT BETWEEN 500 AND 5000;


4. IN Operator
Q12. Display items belonging to Electronics, Furniture and Accessories.
SELECT * FROM Items
WHERE Category IN ('Electronics', 'Furniture', 'Accessories');


Q13. Display items supplied by ABC Traders, Tech World or Sound Hub.
SELECT * FROM Items
WHERE Supplier IN ('ABC Traders', 'Tech World', 'Sound Hub');


Q14. Display items whose status is Available, Pending or Unavailable.
SELECT * FROM Items
WHERE Status IN ('Available', 'Pending', 'Unavailable');


Q15. Display items whose category is NOT IN Electronics and Furniture.
SELECT * FROM Items
WHERE Category NOT IN ('Electronics', 'Furniture');


5. LIKE Operator
Q16. Display items whose name starts with 'M'.
SELECT * FROM Items
WHERE Item_Name LIKE 'M%';


Q17. Display items whose name ends with 'r'.
SELECT * FROM Items
WHERE Item_Name LIKE '%r';


Q18. Display items whose name contains 'oo'.
SELECT * FROM Items
WHERE Item_Name LIKE '%oo%';


Q19. Display items whose name starts with 'S'.
SELECT * FROM Items
WHERE Item_Name LIKE 'S%';


Q20. Display suppliers whose name starts with 'A'.
SELECT * FROM Items
WHERE Supplier LIKE 'A%';


Q21. Display items whose name has exactly 5 characters.
SELECT * FROM Items
WHERE Item_Name LIKE '_____';


6. IS NULL / IS NOT NULL
Q22. Display items where Supplier is NULL.
SELECT * FROM Items
WHERE Supplier IS NULL;


Q23. Display items where Status is NOT NULL.
SELECT * FROM Items
WHERE Status IS NOT NULL;


Q24. Display items where Price is NULL.
SELECT * FROM Items
WHERE Price IS NULL;


Q25. Display items where Quantity is NOT NULL.
SELECT * FROM Items
WHERE Quantity IS NOT NULL;


7. ORDER BY Clause
Q26. Display all items in ascending order of Price.
SELECT * FROM Items
ORDER BY Price ASC;


Q27. Display all items in descending order of Quantity.
SELECT * FROM Items
ORDER BY Quantity DESC;


8. Mixed Practice
Q28. Display Electronics items with prices between 10000 and 50000.
SELECT * FROM Items
WHERE Category = 'Electronics'
AND Price BETWEEN 10000 AND 50000;


Q29. Display items supplied by ABC Traders whose status is Available.
SELECT * FROM Items
WHERE Supplier = 'ABC Traders'
AND Status = 'Available';


Q30. Display items whose names start with 'P' and price is greater than 1000.
SELECT * FROM Items
WHERE Item_Name LIKE 'P%'
AND Price > 1000;


Q31. Display the top 5 most expensive items.
SELECT * FROM Items
ORDER BY Price DESC
LIMIT 5;


Q32. Display items in descending order of Date_Added.
SELECT * FROM Items
ORDER BY Date_Added DESC;