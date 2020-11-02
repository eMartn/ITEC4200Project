--Query 12
-- This query shows products that are below the average price ($43.54). The query then orders them by product price in decending order. 
SELECT PRODUCTCATEGORY AS "Product Category", PRODUCTDESCR AS "Product Description", TO_CHAR(PRODUCTPRICE,'fm$99,999.00') AS "Product Price" FROM PRODUCT
WHERE PRODUCTPRICE < (SELECT AVG(PRODUCTPRICE) FROM PRODUCT)
ORDER BY PRODUCTPRICE DESC;

-- Query 13
-- This query pulls up all of the names of those employees who
-- live in states where there are stores that open sometime at 9am.
SELECT e_firstName AS "First Name", e_lastName AS "Last Name"
FROM employee
WHERE e_state IN (SELECT storeState
                  FROM stores
                  WHERE openHours LIKE '9%am%-%')
ORDER BY e_firstName;



