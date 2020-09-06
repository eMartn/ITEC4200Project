-- QUERY 1
-- This query will find all products whose category is a fish and product color is white or a product whose category is tank and product color is clear.
SELECT productID AS "ID", productCategory AS "Product", productDescr AS "Description", productColor AS "Color"
FROM PRODUCT
WHERE productCategory = 'Fish' AND productColor LIKE '%White%' OR productCategory = 'Tank' AND productColor = 'Clear'
ORDER BY productCategory ASC;

-- QUERY 2
-- This query will prompt the user to enter a employee first name inital and then a state abbreviation (EX: GA, FL, NC, etc.)and then search
-- for all employees name who's name start with that letter and live in the state entered by the user.
-- For instance: If the user enters the letter C for the first name initial and then enters CA for the state 
-- abbreviation the query will return all employees whos name starts with C and live in CA and display their information. 

SELECT * FROM EMPLOYEE;

SELECT E_FIRSTNAME || ' ' || E_LASTNAME AS "Full Name", EMPLOYEEID AS "Employee ID" , e_State AS "State", STORES_STOREID AS "Store ID", E_PHONENUMBER AS "Phone Number"
FROM EMPLOYEE
WHERE E_FIRSTNAME LIKE '&&first_initial%' AND e_State = '&&state_abbreviation'
ORDER BY E_FIRSTNAME;

UNDEFINE first_initial;
UNDEFINE state_abbreviation;