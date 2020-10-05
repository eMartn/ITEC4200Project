-- Query 8
-- This query ranks the price of products that are less than $50 and start with an F.
SELECT PRODUCTCATEGORY AS "ProductCategory", PRODUCTDESCR AS "Product Description", TO_CHAR(PRODUCTPRICE, '$99,999.00') AS "Product Price", RANK() OVER(ORDER BY PRODUCTPRICE) AS "Rank" FROM PRODUCT
WHERE PRODUCTCATEGORY LIKE 'F%' AND PRODUCTPRICE < 50
GROUP BY PRODUCTCATEGORY, PRODUCTPRICE, PRODUCTDESCR;

-- Query 9
-- This query finds the employees who have a last name 'Smith' and returns the employee
-- whose first name is closest to the letter Z. The names are sorted by last name ascending.
SELECT MAX(e_firstName) AS "First name closest to letter Z", e_lastName AS "Last Name"
FROM employee
GROUP BY e_lastName
HAVING  e_lastName = 'Smith'
ORDER BY e_lastName;
