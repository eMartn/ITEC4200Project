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






--Creating Index from STORES table on STORESTATE column
CREATE INDEX store_state
ON STORES(STORESTATE);

-- Displaying that the index has been created
-- The second row STORE_STATE is the query created above and is that of a non-PK column
SELECT * FROM ALL_INDEXES WHERE TABLE_NAME = 'STORES';


