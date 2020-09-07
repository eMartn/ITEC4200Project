-- QUERY 1
-- This query will find all products whose category is fish and product color 
-- is white or products whose category is tank and product color is clear.
SELECT productID AS "ID", productCategory AS "Product", productDescr AS "Description", productColor AS "Color"
FROM PRODUCT
WHERE productCategory = 'Fish' AND productColor LIKE '%White%' OR productCategory = 'Tank' AND productColor = 'Clear'
ORDER BY productCategory ASC;

-- QUERY 2
-- This query will prompt the user to enter an employee first name inital and then 
-- a state abbreviation (EX: GA, FL, NC, etc.)and then search for all employees 
-- whose names start with that letter and live in the state entered by the user.
-- For instance: If the user enters the letter C for the first name initial and 
-- then enters CA for the state abbreviation, the query will return all employees
-- whose names starts with C and live in CA and display their information. 
SELECT e_FirstName || ' ' || e_LastName AS "Full Name", employeeID AS "Employee ID", 
       e_State AS "State", STORES_storeID AS "Store ID", e_PhoneNumber AS "Phone Number"
FROM employee
WHERE e_FirstName LIKE '&&first_initial%' AND e_State = '&&state_abbreviation'
ORDER BY e_FirstName;

UNDEFINE first_initial;
UNDEFINE state_abbreviation;

-- QUERY 3
-- This query displays the the purchase date and payment method used for the 5 earliest
-- purchases made at stores which have identification numbers between 2 and 8.
SELECT purchaseDate AS "Date Purchased", paymentMethod AS "Payment Method"
FROM purchase
WHERE STORES_storeID BETWEEN 2 and 8
ORDER BY "Date Purchased"
FETCH NEXT 5 ROWS ONLY;
       
