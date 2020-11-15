-- Query 14
-- This query selects all employees who work in the states of Georgia or California.
-- It uses a UNION operator to combine the results of the two queries. 
SELECT E_FIRSTNAME AS "First Name", E_LASTNAME AS "Last Name",  E_STREETADDRESS AS "Address", E_CITY AS "City", E_STATE AS "State"
FROM EMPLOYEE
WHERE E_STATE = 'GA' 
UNION 
SELECT E_FIRSTNAME, E_LASTNAME, E_STREETADDRESS , E_CITY, E_STATE
FROM EMPLOYEE
WHERE E_STATE = 'CA'
ORDER BY 2;

--Query 15