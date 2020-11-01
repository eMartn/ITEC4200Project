--Query 12
-- This query shows products that are below the average price ($43.54). The query then orders them by product price in decending order. 
SELECT PRODUCTCATEGORY AS "Product Category", PRODUCTDESCR AS "Product Description", TO_CHAR(PRODUCTPRICE,'fm$99,999.00') AS "Product Price" FROM PRODUCT
WHERE PRODUCTPRICE < (SELECT AVG(PRODUCTPRICE) FROM PRODUCT)
ORDER BY PRODUCTPRICE DESC;





