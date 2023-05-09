DROP TABLE if exists categories;
CREATE TABLE categories (
    categoryID SERIAL PRIMARY KEY,
    categoryName VARCHAR,
    description VARCHAR, 
    picture BYTEA
);

DROP TABLE if exists customers;
CREATE TABLE customers(
    customerID VARCHAR PRIMARY KEY,
    companyName VARCHAR,
    contactName VARCHAR,
    contactTitle VARCHAR,
    address VARCHAR,
    city VARCHAR,
    region VARCHAR(50),
    postalCode VARCHAR(50),
    country VARCHAR(50),
    phone VARCHAR(50), 
    fax VARCHAR(50)
);
DROP TABLE if exists employee_territories;
CREATE TABLE employee_territories(
    employeeID SERIAL PRIMARY KEY,
    territoryID SERIAL PRIMARY KEY
    
);

DROP TABLE if exists employees;
CREATE TABLE employees(
    employeeID SERIAL PRIMARY KEY,
    lastName VARCHAR(50),
    firstName VARCHAR(50),
    title VARCHAR(100),
    titleOfCourtesy VARCHAR(10),
    birthdate TIMESTAMP,
    hireDate TIMESTAMP,
    address VARCHAR,
    city VARCHAR(50),
    region VARCHAR(10),
    postalCode  VARCHAR(50),
    country VARCHAR(50),
    homePhone VARCHAR(50),
    extension SMALLSERIAL,
    photo BYTEA,
    notes VARCHAR,
    reportsTo SMALLSERIAL,
    photoPath VARCHAR  
);

DROP TABLE if exists order_details;
CREATE TABLE order_details(
    orderID INTEGER,
    productID SMALLSERIAL,
    unitPrice NUMERIC,
    quantity SMALLSERIAL,
    discount NUMERIC
);

DROP TABLE if exists orders;
CREATE TABLE orders(
    orderID INTEGER PRIMARY KEY,
    customerID VARCHAR(50),
    employeeID SERIAL,
    orderDate TIMESTAMP,
    requiredDate TIMESTAMP,
    shippedDate TIMESTAMP,
    shipVia SMALLSERIAL,
    freight NUMERIC,
    shipName VARCHAR,
    shipAddress VARCHAR,
    shipCity VARCHAR(50),
    shipRegion VARCHAR(50),
    shipPostalCode VARCHAR(50),
    shipCountry VARCHAR(50)
);

DROP TABLE if exists products;
CREATE TABLE products(
    productID SERIAL PRIMARY KEY,
    productName VARCHAR,
    supplierID SMALLSERIAL,
    categoryID SERIAL,
    quantityPerUnit VARCHAR,
    unitPrice NUMERIC,
    unitInStock SMALLSERIAL,
    unitsOnOrder SMALLSERIAL,
    reorderLevel SMALLSERIAL,
    discontinued BOOLEAN,
    
);

DROP TABLE if exists regions;
CREATE TABLE regions(
    regionID SERIAL PRIMARY KEY,
    regionDescription VARCHAR(30)
);

DROP TABLE if exists shippers;
CREATE TABLE shippers(
    shipperID SERIAL PRIMARY KEY,
    companyName VARCHAR(30),
    phone VARCHAR(30)
);

DROP TABLE if exists suppliers;
CREATE TABLE suppliers(
    supplierID SERIAL PRIMARY KEY,
    companyName VARCHAR(30),
    contactName VARCHAR(50),
    contactTitle VARCHAR(30),
    address VARCHAR(50),
    city VARCHAR(30),
    region VARCHAR(10),
    postalCode VARCHAR(50),
    country VARCHAR(50),
    phone VARCHAR(30),
    fax VARCHAR(50),
    homePage VARCHAR    
);

DROP TABLE if exists territories;
CREATE TABLE territories(
    territoryID SERIAL PRIMARY KEY,
    territoryDescription VARCHAR(50),
    regionID SMALLSERIAL
);

\COPY categories FROM 'binomial-baharat-student-code/week05/northwind_data_clean-master/data/categories.csv' DELIMETER ',' CSV HEADER;

\COPY customers FROM '~/spicy/binomial-baharat-student-code/week05/northwind_data_clean-master/data/customers.csv' DELIMITER ',' CSV HEADER;

\COPY employee_territories FROM '~/spicy/binomial-baharat-student-code/week05/northwind_data_clean-master/data/employee_territories.csv' DELIMITER ',' CSV HEADER;

\COPY employees FROM '~/spicy/binomial-baharat-student-code/week05/northwind_data_clean-master/data/employees.csv' DELIMITER ',' CSV HEADER;

\COPY order_details FROM '~/spicy/binomial-baharat-student-code/week05/northwind_data_clean-master/data/order_details.csv' DELIMITER ',' CSV HEADER;

\COPY orders FROM '~/spicy/binomial-baharat-student-code/week05/northwind_data_clean-master/data/orders.csv' DELIMITER ',' CSV HEADER;

\COPY products FROM '~/spicy/binomial-baharat-student-code/week05/northwind_data_clean-master/data/products.csv' DELIMITER ',' CSV HEADER;

\COPY regions FROM '~/spicy/binomial-baharat-student-code/week05/northwind_data_clean-master/data/regions.csv' DELIMITER ',' CSV HEADER;

\COPY shippers FROM '~/spicy/binomial-baharat-student-code/week05/northwind_data_clean-master/data/shippers.csv' DELIMITER ',' CSV HEADER;

\COPY suppliers FROM '~/spicy/binomial-baharat-student-code/week05/northwind_data_clean-master/data/suppliers.csv' DELIMITER ',' CSV HEADER;

\COPY territories FROM '~/spicy/binomial-baharat-student-code/week05/northwind_data_clean-master/data/territories.csv' DELIMITER ',' CSV HEADER;
