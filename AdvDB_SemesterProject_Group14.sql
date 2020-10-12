
-- DROP TABLES FOR MULTIPLE RUNS 
DROP TABLE STORES CASCADE CONSTRAINTS;
DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE PRODUCT CASCADE CONSTRAINTS;
DROP TABLE PURCHASE CASCADE CONSTRAINTS;
DROP TABLE stores_has_product CASCADE CONSTRAINTS;


-- CREATES STORES TABLE
CREATE TABLE STORES (

    storeID INT NOT NULL,
    storeZipCode CHAR(5),
    storeCity VARCHAR(45),
    storeStreetAddress VARCHAR(45),
    storeState VARCHAR(2),
    storePhoneNumber CHAR(9),
    openHours VARCHAR(80),
    
    -- SETS A CONTRAINT TO CREATE THE PRIMARY KEY 
    CONSTRAINT STORES_store_ID_pk PRIMARY KEY (storeID)
    
);

-- ALTER COMMAND TO MODIFY TABLE TO CHANGE DATA TYPE VALUE OF phone number
ALTER TABLE STORES
MODIFY storePhoneNumber CHAR(10);


-- CREATES A SEQUENCE FOR STORES TABLE 
CREATE SEQUENCE STORES_SEQ 
START WITH 1
INCREMENT BY 1;

DESCR STORES;

-- INSERT STATEMENTS THAT INSERT DATA INTO THE STORES TABLE 
INSERT INTO STORES(storeID, storeZipCode, storeCity, storeStreetAddress, storeState, storePhoneNumber, openHours) 
VALUES (STORES_SEQ.NEXTVAL, '30093','Norcross', '1243 Bucko St.', 'GA', '6789903893', '9:00am - 10:00pm');

INSERT INTO STORES(storeID, storeZipCode, storeCity, storeStreetAddress, storeState, storePhoneNumber, openHours) 
VALUES (STORES_SEQ.NEXTVAL, '93003', 'Charlotte', '2134 Cow dr.', 'NC', '6376269283', '9:00am - 10:00pm');

INSERT INTO STORES(storeID, storeZipCode, storeCity, storeStreetAddress, storeState, storePhoneNumber, openHours) 
VALUES (STORES_SEQ.NEXTVAL, '12628', 'Buffalo', '2369 Air walk ln.', 'NY', '6768893874', '8:00am - 11:00pm');

INSERT INTO STORES(storeID, storeZipCode, storeCity, storeStreetAddress, storeState, storePhoneNumber, openHours) 
VALUES (STORES_SEQ.NEXTVAL, '19384', 'Santa Monica', '7362 Air Union', 'CA', '6467748374', '10:00am - 9:00pm');

INSERT INTO STORES(storeID, storeZipCode, storeCity, storeStreetAddress, storeState, storePhoneNumber, openHours) 
VALUES (STORES_SEQ.NEXTVAL, '10394', 'Miami', '0227 Chadwick St.', 'FL', '6863647463', '9:00am - 10:00pm');

INSERT INTO STORES(storeID, storeZipCode, storeCity, storeStreetAddress, storeState, storePhoneNumber, openHours) 
VALUES (STORES_SEQ.NEXTVAL, '29383', 'Boston', '1010 Brady ln.', 'MA', '5758379383', '9:00am - 11:00pm');

INSERT INTO STORES(storeID, storeZipCode, storeCity, storeStreetAddress, storeState, storePhoneNumber, openHours) 
VALUES (STORES_SEQ.NEXTVAL, '42069', 'Austin', '9696 peepo dr.', 'TX', '7689875566', '10:00am - 11:00pm');

INSERT INTO STORES(storeID, storeZipCode, storeCity, storeStreetAddress, storeState, storePhoneNumber, openHours) 
VALUES (STORES_SEQ.NEXTVAL, '36825', 'Hollywood', '6789 Agren dr.', 'CA', '4758379383', '8:00am - 10:00pm'); 

INSERT INTO STORES(storeID, storeZipCode, storeCity, storeStreetAddress, storeState, storePhoneNumber, openHours) 
VALUES (STORES_SEQ.NEXTVAL, '28371', 'Sacramento', '1277 Yeppers dr.', 'CA', '8788289922', '8:00am - 10:00pm');

-- ALLOWS US TO SEE DATA IN THE STORES TABLE
SELECT * FROM STORES;

-- CREATES A SAVEPOINT IN CASE WE NEED TO ROLLBACK 
SAVEPOINT AFTER_STORES_RUN;



-- CREATES CUSTOMER TABLE 
CREATE TABLE CUSTOMER (

    customerID INT NOT NULL,
    customerEmail VARCHAR(60),
    cc_Information VARCHAR(45),
    debitCardInformation VARCHAR(45),
    
    -- SETS A CONTRAINT TO CREATE THE PRIMARY KEY 
    CONSTRAINT CUSTOMER_customer_ID_pk PRIMARY KEY (customerID)

);

-- CREATES A SEQUENCE FOR 
CREATE SEQUENCE CUSTOMER_SEQ
START WITH 1
INCREMENT BY 1;

-- CREATES A SAVEPOINT AFTER THE SEQUENCE WAS RAN
SAVEPOINT AFTER_CUST_SEQ;

-- INSERT STATEMENTS THAT INSERT DATA INTO THE CUSTOMER TABLE 
INSERT INTO CUSTOMER(customerID, customerEmail, cc_Information, debitCardInformation)
VALUES (CUSTOMER_SEQ.NEXTVAL, 'trihardandy@gmail.com', '0099 8877 5647 3893', '9898 6547 4354');

INSERT INTO CUSTOMER(customerID, customerEmail, cc_Information, debitCardInformation)
VALUES (CUSTOMER_SEQ.NEXTVAL, 'mrdestructoid@yahoo.com', '0192 8383 9402', '0229 3843 2822 1834');

INSERT INTO CUSTOMER(customerID, customerEmail, cc_Information, debitCardInformation)
VALUES (CUSTOMER_SEQ.NEXTVAL, 'johnsmith4@gmail.com', '0192 9384 2929 2837', '0293 8392 4827 0293');

INSERT INTO CUSTOMER(customerID, customerEmail, cc_Information, debitCardInformation)
VALUES (CUSTOMER_SEQ.NEXTVAL, 'applegirl@gmail.com', '0293 2818 2838 9201', '0192 0394 3983 7687');

INSERT INTO CUSTOMER(customerID, customerEmail, cc_Information, debitCardInformation)
VALUES (CUSTOMER_SEQ.NEXTVAL, 'mrcow04@ggc.edu', '0102 9393 8484 2838', '2012 2929 3838 9405');

INSERT INTO CUSTOMER(customerID, customerEmail, cc_Information, debitCardInformation)
VALUES (CUSTOMER_SEQ.NEXTVAL, 'timcook23@gmail.com', '0192 0202 3939 4848', '1223 2358 8274 3847');

INSERT INTO CUSTOMER(customerID, customerEmail, cc_Information, debitCardInformation)
VALUES (CUSTOMER_SEQ.NEXTVAL, 'mizzywizzy4@outlook.com', '0192 0292 0394 3894', '2039 3827 2938 3020');

INSERT INTO CUSTOMER(customerID, customerEmail, cc_Information, debitCardInformation)
VALUES (CUSTOMER_SEQ.NEXTVAL, 'bossman4@gmail.com', '0192 0239 0392 8474', '8374 9201 3847 3829');

INSERT INTO CUSTOMER(customerID, customerEmail, cc_Information, debitCardInformation)
VALUES (CUSTOMER_SEQ.NEXTVAL, 'milkens97@hotmail.com', '9384 2828 1736 8291', '0292 3847 2819 1928');

INSERT INTO CUSTOMER(customerID, customerEmail, cc_Information, debitCardInformation)
VALUES (CUSTOMER_SEQ.NEXTVAL, 'pastelle99@gmail.com', '9283 0293 2818 2837', '8394 9283 2736 2728');

INSERT INTO CUSTOMER(customerID, customerEmail, cc_Information, debitCardInformation)
VALUES (CUSTOMER_SEQ.NEXTVAL, 'noshotbucko@hotmail.com', '6969 4200 4546 8372', '6924 3748 2893 7346');

-- SELECT STATEMENT TO SEE DATA IN TABLE AFTER THE INSERT COMMAND HAS BEEN RAN
SELECT * FROM CUSTOMER;

-- UPDATE COMMAND TO UPDATE SOME INFORMATION IN THE CUSTOMER TABLE
UPDATE CUSTOMER
SET cc_information = '0192 8383 9402 9898', debitCardInformation = '9898 6547 4354 3783'
WHERE customerid = 1;

UPDATE CUSTOMER
SET cc_information = ''
WHERE customerid = 2;

-- SAVEPOINT CREATED AFTERWARDS
SAVEPOINT AFTER_CUSTOMER_SEQ;


-- CREATES EMPLOYEE TBALE
CREATE TABLE EMPLOYEE (

    employeeID INT NOT NULL,
    STORES_storeID INT NOT NULL,
    e_firstName VARCHAR(45),
    e_lastName VARCHAR(45),
    e_phoneNumber VARCHAR(9),
    e_zipCode CHAR(5),
    e_City VARCHAR(45),
    e_streetAddress VARCHAR(45),
    e_State char(2),
    
    -- SETS A CONTRAINT TO CREATE THE PRIMARY KEY 
    CONSTRAINT EMPLOYEE_employee_ID_STORES_storeID_PK PRIMARY KEY (employeeID,STORES_storeID), 

     -- SETS A CONTRAINT TO CREATE THE FOREIGN KEY 
    CONSTRAINT STORES_store_ID_FK FOREIGN KEY (STORES_storeID)
    REFERENCES STORES (storeID)
    
);


-- ALTER TABLE TO MODIFY THE DATA TYPE FOR PHONE NUMBER
ALTER TABLE EMPLOYEE
MODIFY e_phoneNumber CHAR(10);

-- CREATES A SEQUENCE FOR EMPLOYEE
CREATE SEQUENCE EMPLOYEE_SEQ
START WITH 1
INCREMENT BY 1;


-- CREATES A SAVEPOINT 
SAVEPOINT AFTER_EMPLOYEE_SEQ;

-- INSERTS THE DATA INTO THE EMPLOYEE TABLE
INSERT INTO EMPLOYEE(employeeID, STORES_storeID, e_firstName, e_lastName,e_phoneNumber, e_zipCode, e_City, e_streetAddress, e_State)
VALUES (EMPLOYEE_SEQ.NEXTVAL, 1, 'John', 'Macintyer', '7673734857', '30093', 'Norcross', '1243 wide peepo St.', 'GA');

INSERT INTO EMPLOYEE(employeeID, STORES_storeID, e_firstName, e_lastName,e_phoneNumber, e_zipCode, e_City, e_streetAddress, e_State)
VALUES (EMPLOYEE_SEQ.NEXTVAL, 5, 'Wayne', 'Onslet', '6768599584', '23733', 'Homestead', '1232 kreylost dr.', 'FL');

INSERT INTO EMPLOYEE(employeeID, STORES_storeID, e_firstName, e_lastName,e_phoneNumber, e_zipCode, e_City, e_streetAddress, e_State)
VALUES (EMPLOYEE_SEQ.NEXTVAL, 9, 'Jobin', 'Smith', '6789335262', '32938', 'Sacramento', '2637 Poggers St.', 'CA');

INSERT INTO EMPLOYEE(employeeID, STORES_storeID, e_firstName, e_lastName,e_phoneNumber, e_zipCode, e_City, e_streetAddress, e_State)
VALUES (EMPLOYEE_SEQ.NEXTVAL, 2, 'Common', 'Sense', '8689598457', '23548', 'Belmont', '2343 Castleton ln.', 'NC');

INSERT INTO EMPLOYEE(employeeID, STORES_storeID, e_firstName, e_lastName,e_phoneNumber, e_zipCode, e_City, e_streetAddress, e_State)
VALUES (EMPLOYEE_SEQ.NEXTVAL, 4, 'Bryant', 'Foritsworth', '2486452736', '23748', 'Santa Monica', '8392 Bearstein rd.', 'CA');

INSERT INTO EMPLOYEE(employeeID, STORES_storeID, e_firstName, e_lastName,e_phoneNumber, e_zipCode, e_City, e_streetAddress, e_State)
VALUES (EMPLOYEE_SEQ.NEXTVAL, 3, 'Andrew', 'Smith', '6789489484', '23958', 'Fort Erie', '1203 Ducksworth ln.', 'NY');

INSERT INTO EMPLOYEE(employeeID, STORES_storeID, e_firstName, e_lastName,e_phoneNumber, e_zipCode, e_City, e_streetAddress, e_State)
VALUES (EMPLOYEE_SEQ.NEXTVAL, 6, 'James', 'Akron', '2326689383', '23236', 'Boston', '3454 Goat Ave.', 'MA');

INSERT INTO EMPLOYEE(employeeID, STORES_storeID, e_firstName, e_lastName,e_phoneNumber, e_zipCode, e_City, e_streetAddress, e_State)
VALUES (EMPLOYEE_SEQ.NEXTVAL, 7, 'Tim', 'Duncan', '4568572903', '54875', 'Austin', '8373 Spurs town dr.', 'TX');

INSERT INTO EMPLOYEE(employeeID, STORES_storeID, e_firstName, e_lastName,e_phoneNumber, e_zipCode, e_City, e_streetAddress, e_State)
VALUES (EMPLOYEE_SEQ.NEXTVAL, 8, 'Carson', 'Ahgren', '8696976857', '95373', 'Los Angeles', '6976 Counts ln.', 'CA');

INSERT INTO EMPLOYEE(employeeID, STORES_storeID, e_firstName, e_lastName,e_phoneNumber, e_zipCode, e_City, e_streetAddress, e_State)
VALUES (EMPLOYEE_SEQ.NEXTVAL, 8, 'Clint', 'Salomon', '5768349383', '48948', 'Glendale', '8373 Stevens park St.', 'CA');

INSERT INTO EMPLOYEE(employeeID, STORES_storeID, e_firstName, e_lastName,e_phoneNumber, e_zipCode, e_City, e_streetAddress, e_State)
VALUES (EMPLOYEE_SEQ.NEXTVAL, 4, 'Geralt', 'Benston', '4563478475', '57684', 'Venice', '2486 Old Beans rd.', 'CA');

-- A SELECT STATEMENT SO WE CAN SEE THE TABLE DATA
SELECT * FROM EMPLOYEE;

-- SAVE POINT AFTER THE SUCCESSFUL EMPLOYEE RUN 
SAVEPOINT AFTER_EMPLOYEE_RUN;

-- CREATES THE PRODUCT TABLE 
CREATE TABLE PRODUCT (

    productID INT NOT NULL,
    productCategory VARCHAR(45),
    productPrice DECIMAL(8,2),
    productDescr VARCHAR(45),
    productColor VARCHAR(46),
    
    -- SETS A CONTRAINT TO CREATE THE PRIMARY KEY 
    CONSTRAINT PRODUCT_product_ID_PK PRIMARY KEY (productID)

);

-- CREATES SEQUENCE FOR PRODUCT PRIMARY KEY
    CREATE SEQUENCE PRODUCT_SEQ
    START WITH 1
    INCREMENT BY 1;
    
-- INSERTS DATA INTO PRODUCT TABLE
INSERT INTO PRODUCT(productID, productCategory, productPrice, productDescr, productColor)
VALUES(PRODUCT_SEQ.NEXTVAL, 'Fish', 13.50, 'Goldfish', 'Orance/White');

INSERT INTO PRODUCT(productID, productCategory, productPrice, productDescr, productColor)
VALUES(PRODUCT_SEQ.NEXTVAL, 'Tank', 59.99, 'Medium-sized, 20 gallon tank.', 'Clear');

INSERT INTO PRODUCT(productID, productCategory, productPrice, productDescr, productColor)
VALUES(PRODUCT_SEQ.NEXTVAL, 'Tank', 149.99, 'Big 40 Gallon Tank', 'Clear');

INSERT INTO PRODUCT(productID, productCategory, productPrice, productDescr, productColor)
VALUES(PRODUCT_SEQ.NEXTVAL, 'Food', 6.99, 'Betta fish food pellets.', 'Brown');

INSERT INTO PRODUCT(productID, productCategory, productPrice, productDescr, productColor)
VALUES(PRODUCT_SEQ.NEXTVAL, 'Filter', 49.99, 'Automatic water filter.', 'Light blue.');

INSERT INTO PRODUCT(productID, productCategory, productPrice, productDescr, productColor)
VALUES(PRODUCT_SEQ.NEXTVAL, 'Tool', 8.99, 'Tank cleaning tool.', 'Silver/White');

INSERT INTO PRODUCT(productID, productCategory, productPrice, productDescr, productColor)
VALUES(PRODUCT_SEQ.NEXTVAL, 'Fish', 34.99, 'African Pike', 'Silver');

INSERT INTO PRODUCT(productID, productCategory, productPrice, productDescr, productColor)
VALUES(PRODUCT_SEQ.NEXTVAL, 'Fish', 79.99, 'Black Goldfish', 'Black/White');

INSERT INTO PRODUCT(productID, productCategory, productPrice, productDescr, productColor)
VALUES(PRODUCT_SEQ.NEXTVAL, 'Food', 10.99, 'Goldfish food pellets', 'Brown');

INSERT INTO PRODUCT(productID, productCategory, productPrice, productDescr, productColor)
VALUES(PRODUCT_SEQ.NEXTVAL, 'Filter', 19.99, 'Replaceable water filter.', 'White');


-- FIXED TYPO IN FIRST DATA ENTRY FOR PRODUCT TABLE
UPDATE PRODUCT
SET productColor = 'Orange/White'
WHERE productID = 1;

-- A SELECT STATEMENT SO WE CAN SEE THE TABLE DATA
SELECT * FROM PRODUCT;

-- SAVEPOINT AFTER SUCCESSFUL PRODUCT RUN
SAVEPOINT AFTER_PRODUCT_RUN;

-- CREATES STORES_HAS_PROJECT TABLE 
CREATE TABLE STORES_HAS_PRODUCT (

    storeID INT,
    productID INT,
    store_has_productAvailability VARCHAR(1),
    store_has_productStock INT,
    
        -- SETS A CONTRAINT TO CREATE THE PRIMARY KEY 
    CONSTRAINT STORES_HAS_PRODUCT_storeID_productID_PK PRIMARY KEY (storeID,productID),

        -- SETS A CONTRAINT TO CREATE THE FOREIGN KEY 
    CONSTRAINT STORES_HAS_PRODUCT_storeID_FK FOREIGN KEY (storeID)
    REFERENCES STORES (storeID),
    
        -- SETS A CONTRAINT TO CREATE THE PRIMARY KEY 
    CONSTRAINT STORES_HAS_PRODUCT_productID_FK FOREIGN KEY (productID)
    REFERENCES PRODUCT (productID)

);

-- INSERTS DATA INTO STORES_HAS_PRODUCT TABLE
INSERT INTO STORES_HAS_PRODUCT
VALUES(1, 5, 'T', 5);

INSERT INTO STORES_HAS_PRODUCT
VALUES(1, 1, 'T', 3);

INSERT INTO STORES_HAS_PRODUCT
VALUES(2, 9, 'T', 15);

INSERT INTO STORES_HAS_PRODUCT
VALUES(6, 4, 'F', 0);

INSERT INTO STORES_HAS_PRODUCT
VALUES(4, 5, 'T', 23);

INSERT INTO STORES_HAS_PRODUCT
VALUES(9, 8, 'F', 0);

INSERT INTO STORES_HAS_PRODUCT
VALUES(9, 9, 'F', 0);

INSERT INTO STORES_HAS_PRODUCT
VALUES(4, 1, 'T', 3);

INSERT INTO STORES_HAS_PRODUCT
VALUES(6, 7, 'T', 20);

INSERT INTO STORES_HAS_PRODUCT
VALUES(8, 10, 'T', 30);

INSERT INTO STORES_HAS_PRODUCT
VALUES(7, 8, 'F', 0);

INSERT INTO STORES_HAS_PRODUCT
VALUES(3, 2, 'T', 16);

INSERT INTO STORES_HAS_PRODUCT
VALUES(5, 10, 'T', 5);

INSERT INTO STORES_HAS_PRODUCT
VALUES(5, 3, 'F', 0);

INSERT INTO STORES_HAS_PRODUCT
VALUES(3, 3, 'T', 4);

-- A SELECT STATEMENT SO WE CAN SEE THE TABLE DATA
SELECT * FROM STORES_HAS_PRODUCT;

SAVEPOINT AFTER_STORES_HAS_PRODUCT_RUN;


-- CREATES PURCHASE TABLE 
CREATE TABLE PURCHASE (

    purchaseID INT NOT NULL,
    purchaseDate DATE,
    paymentMethod VARCHAR(45),
    customerID INT,
    employeeID INT,
    STORES_storeID INT,
    productID INT,
    
        -- SETS A CONTRAINT TO CREATE THE PRIMARY KEY 
    CONSTRAINT PURCHASE_purchaseID_PK PRIMARY KEY (purchaseID),
    
        -- SETS A CONTRAINT TO CREATE THE FOREIGN KEY 
    CONSTRAINT PURCHASE_employeeID_STORES_storeID_FK FOREIGN KEY (employeeID, STORES_storeID)
    REFERENCES EMPLOYEE(employeeID, STORES_storeID),
    
       -- SETS A CONTRAINT TO CREATE THE FOREIGN KEY 
    CONSTRAINT PURCHASE_customerID_FK FOREIGN KEY (customerID)
    REFERENCES CUSTOMER (customerID),
    
        -- SETS A CONTRAINT TO CREATE THE FOREIGN KEY 
    CONSTRAINT PURCHASE_productID_FK FOREIGN KEY (productID)
    REFERENCES PRODUCT (productID)

);

-- CREATES SEQUENCE FOR PURCHASE TABLE PK
CREATE SEQUENCE PURCHASE_SEQ
START WITH 1
INCREMENT BY 1;

-- INSERTS DATA FOR PURCHASE TABLE
INSERT INTO PURCHASE(purchaseID, purchaseDate, paymentMethod, customerID, employeeID, STORES_storeID, productID)
VALUES(PURCHASE_SEQ.NEXTVAL, to_date('2020-01-07', 'YYYY-MM-DD'), 'Cash', 11, 9, 8, 10);

INSERT INTO PURCHASE
VALUES(PURCHASE_SEQ.NEXTVAL, to_date('2020-01-12', 'YYYY-MM-DD'), 'Credit', 9, 6, 3, 2);

INSERT INTO PURCHASE
VALUES(PURCHASE_SEQ.NEXTVAL, to_date('2020-01-12', 'YYYY-MM-DD'), 'Debit', 2, 11, 4, 1);

INSERT INTO PURCHASE
VALUES(PURCHASE_SEQ.NEXTVAL, to_date('2020-02-04', 'YYYY-MM-DD'), 'Debit', 6, 4, 2, 1);

INSERT INTO PURCHASE
VALUES(PURCHASE_SEQ.NEXTVAL, to_date('2020-03-17', 'YYYY-MM-DD'), 'Debit', 10, 5, 4, 5);

INSERT INTO PURCHASE
VALUES(PURCHASE_SEQ.NEXTVAL, to_date('2020-03-24', 'YYYY-MM-DD'), 'Cash', 10, 5, 4, 5);

INSERT INTO PURCHASE
VALUES(PURCHASE_SEQ.NEXTVAL, to_date('2020-04-01', 'YYYY-MM-DD'), 'Cash', 3, 1, 1, 5);

INSERT INTO PURCHASE
VALUES(PURCHASE_SEQ.NEXTVAL, to_date('2020-04-20', 'YYYY-MM-DD'), 'Credit', 7, 3, 9, 2);

INSERT INTO PURCHASE
VALUES(PURCHASE_SEQ.NEXTVAL, to_date('2020-04-05', 'YYYY-MM-DD'), 'Cash', 1, 1, 1, 1);

INSERT INTO PURCHASE
VALUES(PURCHASE_SEQ.NEXTVAL, to_date('2020-05-04', 'YYYY-MM-DD'), 'Credit', 5, 2, 5, 10);

INSERT INTO PURCHASE
VALUES(PURCHASE_SEQ.NEXTVAL, to_date('2020-06-11', 'YYYY-MM-DD'), 'Credit', 4, 8, 7, 8);

INSERT INTO PURCHASE
VALUES(PURCHASE_SEQ.NEXTVAL, to_date('2020-07-08', 'YYYY-MM-DD'), 'Debit', 8, 9, 8, 10);

-- A SELECT STATEMENT SO WE CAN SEE THE TABLE DATA
SELECT * FROM PURCHASE;


-- COMMITS 
COMMIT;
