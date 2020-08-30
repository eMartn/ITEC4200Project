
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
SELECT storeID FROM STORES;

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

-- COMMITS 
COMMIT;
