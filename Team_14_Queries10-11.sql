-- Query 10
-- This query shows all employeees and the store they work for. It uses a INNER join by using the 
-- common column STOREID found in both tables
SELECT e.E_FIRSTNAME || ' ' ||  e.E_LASTNAME AS "Full Employee Name", e.STORES_STOREID AS "Store ID", s.STORESTREETADDRESS AS " Store Address", s.STORECITY AS "City", s.STOREZIPCODE AS "Zip Code",s.STORESTATE AS "State"
FROM EMPLOYEE e
INNER JOIN STORES s ON( e.STORES_STOREID = s.STOREID)
ORDER BY e.STORES_STOREID;

-- Query 11
-- This query shows the information of a purchase made by customers who used credit cards,
-- even if the card was declined (shown as null), and the ID of the product meant to be purchased.
-- In addition to this, the query brings up the unique ID for each customer to easily match them with
-- their credit card.
SELECT p.productID AS "ProductID", c.customerID AS "Customer ID", c.cc_information AS "Credit Card Number"
FROM purchase p LEFT OUTER JOIN customer c
ON p.customerID = c.customerID
ORDER BY c.customerID, p.productID;