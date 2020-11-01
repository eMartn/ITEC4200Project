-- Query 10
-- This query shows all employeees and the store they work for. It uses a INNER join by using the 
-- common column STOREID found in both tables
SELECT e.E_FIRSTNAME || ' ' ||  e.E_LASTNAME AS "Full Employee Name", e.STORES_STOREID AS "Store ID", s.STORESTREETADDRESS AS " Store Address", s.STORECITY AS "City", s.STOREZIPCODE AS "Zip Code",s.STORESTATE AS "State"
FROM EMPLOYEE e
INNER JOIN STORES s ON( e.STORES_STOREID = s.STOREID)
ORDER BY e.STORES_STOREID;
