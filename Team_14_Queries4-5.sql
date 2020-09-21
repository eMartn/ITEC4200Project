-- QUERY 4
-- This query will prompt the user to enter a value for a state name (acronym form) and  a value for the first number in a phone number. It will then check to see
-- if there is a result where the state name and first number of a phone number the user entered exist. When the result is outputted it will have $ on the right side of the city name and order by store city. 
-- For example: There are 3 stores in California but each store has a different first number in there phone number. If the user enters CA for the state name and 
-- 8 for the first number in the phone number, the query will output the Sacramento location. 

SELECT RPAD(STORECITY, 19, '$') AS "City", STORESTREETADDRESS AS "Street Address", STOREZIPCODE AS "Zip Code",STORESTATE AS "State", STOREPHONENUMBER AS "Phone Number" FROM STORES
WHERE '&state_name' = SUBSTR(STORESTATE, 1, 2) AND '&&first_phone_number' = SUBSTR(STOREPHONENUMBER,0,1) OR '&&first_phone_number' = SUBSTR(STOREPHONENUMBER,0,2)
ORDER BY STORECITY;

UNDEFINE first_phone_number;

--QUERY 5
-- This query displays the purchase date, the months since new year each purchase 
-- was made, the payment method used, the id of the employee that made the transaction,
-- and the associated store id for products with odd numbered product IDs sorted by
-- ascending employee id.
SElECT purchaseDate AS "Purchase Date", 
       ROUND(ABS(MONTHS_BETWEEN(purchaseDate, TO_DATE('01-01-2020', 'MM-DD-YYYY')))) AS "Purchased x Months Since New Year", 
       paymentMethod AS "Payment Method", employeeID AS "Employee", STORES_storeID AS "Store ID"
FROM purchase
WHERE MOD(productID, 2) != 0
ORDER BY employeeID;