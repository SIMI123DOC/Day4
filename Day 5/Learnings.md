1. WHERE Clause

Used to filter records based on a specific condition.

Example: SELECT * FROM Items WHERE Price = 2500;

2. AND Operator

Used when both conditions must be true.

Example: SELECT * FROM Items WHERE Price > 1000 AND Quantity > 10;

3. OR Operator

Used when at least one condition must be true.

Example: SELECT * FROM Items WHERE Category = 'Furniture' OR Category = 'Stationery';

4. NOT Operator

Used to reverse a condition or exclude matching records.

Example: SELECT * FROM Items WHERE NOT Status = 'Available';

5. BETWEEN Operator

Used to retrieve values within a specified range. Both minimum and maximum values are included.

Example: SELECT * FROM Items WHERE Price BETWEEN 1000 AND 10000;

6. IN Operator

Used to check whether a value matches any value in a given list. It is an alternative to multiple OR conditions.

Example: SELECT * FROM Items WHERE Category IN ('Electronics', 'Furniture', 'Accessories');

7. LIKE Operator

Used to search for a specific pattern in a column.

% – Represents zero or more characters.

_ – Represents exactly one character.

Examples:

LIKE 'M%' – Names starting with M.

LIKE '%r' – Names ending with r.

LIKE '%oo%' – Names containing oo.

LIKE '_____' – Names containing exactly 5 characters.

8. IS NULL Operator

Used to retrieve records where a column has no value (NULL).

Example: SELECT * FROM Items WHERE Supplier IS NULL;

9. IS NOT NULL Operator

Used to retrieve records where a column contains a non-NULL value.

Example: SELECT * FROM Items WHERE Supplier IS NOT NULL;

10. ORDER BY Clause

Used to sort records based on a particular column.

ASC – Sorts records in ascending order (smallest to largest / A to Z).

DESC – Sorts records in descending order (largest to smallest / Z to A).

Examples:

SELECT * FROM Items ORDER BY Price ASC;

SELECT * FROM Items ORDER BY Price DESC;

11. LIMIT Clause

Used to restrict the number of records returned by a query.

Example: SELECT * FROM Items ORDER BY Price DESC LIMIT 5;



