-- Query 6







-- Query 7 
-- The purpose of the query is to help the user see what products are cheap or expensive. 
-- This query displays the products category, description, and price. 
-- It then uses a case to categorize the expense tier of each product based on its price.
-- If the product is within a certain price, the query will label it as budget, mid range, high range, or expensive 
-- This will help the user visualize which products are the cheapeast to most expensive. 

SELECT PRODUCTID AS "ID", PRODUCTCATEGORY AS "Category",PRODUCTDESCR AS "Description", TO_CHAR(PRODUCTPRICE, '$99,999.00') AS "Price",
( CASE WHEN PRODUCTPRICE < 40 THEN 'Budget'
WHEN PRODUCTPRICE < 70 THEN 'Midrange'
WHEN PRODUCTPRICE < 110 THEN 'High Range'
WHEN PRODUCTPRICE >= 140 THEN 'Expensive'
ELSE 'Invalid'
END) AS "Expense Tier" 
FROM PRODUCT
ORDER BY PRODUCTPRICE;
