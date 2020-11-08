--Ch10p1 VIEW 1
-- Creates a view that joins the employee and stores table 
CREATE OR REPLACE VIEW employee_stores 
(FirstName, LastName, StoreID, StreetAddress,StoreState, StoreCity )
AS SELECT e.E_FIRSTNAME, e.E_LASTNAME, s.STOREID, s.STORESTREETADDRESS, s.STORESTATE, s.STORECITY
FROM EMPLOYEE e JOIN STORES s
ON (e.STORES_STOREID = s.STOREID)
ORDER BY e.E_LASTNAME;

-- Querying the view
SELECT * FROM employee_stores;

-- Querying the view. 
-- This query shows all employees who work in stores that are located in California.
-- It uses the view just like a table to pull the data from. 
SELECT STOREID, FIRSTNAME || ' ' || LASTNAME AS "Full Name", STREETADDRESS, STORECITY, STORESTATE FROM employee_stores
WHERE STORESTATE = 'CA';

--Ch10p2 View 2
-- View that brings up the total count of each category of product and displays the
-- category and ID of the item.
CREATE OR REPLACE VIEW ProductInfoVU ("Product ID", "Product Category", "Count of Product Category")
AS SELECT productID, productCategory, (SELECT count(productCategory)
                                         FROM product
                                         WHERE productCategory = m.productCategory)
FROM product m
GROUP BY productID, productCategory
HAVING productID IN (1, 2, 4, 5, 6)
ORDER BY productID;

SELECT * FROM ProductInfoVU;

-- Brings up the categories of product which have a count of 2 in the view.
SELECT "Product Category"
FROM ProductInfoVU
WHERE "Count of Product Category" = 2;


--Creating Index from STORES table on STORESTATE column
CREATE INDEX store_state
ON STORES(STORESTATE);

-- Displaying that the index has been created
-- The second row STORE_STATE is the query created above and is that of a non-PK column
SELECT * FROM ALL_INDEXES WHERE TABLE_NAME = 'STORES';

-- FLASHBACK Exercise
CREATE TABLE TEMP_SP(name VARCHAR(25));

INSERT INTO TEMP_SP(name)
VALUES('Erick');

SELECT * FROM TEMP_SP;

DROP TABLE TEMP_SP;

FLASHBACK TABLE TEMP_SP TO BEFORE DROP;
