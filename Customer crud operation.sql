-- CREATE TABLE

CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15) UNIQUE,
    Password VARCHAR(100) NOT NULL,
    Address VARCHAR(255) NOT NULL
);

-- CREATE (INSERT 10 ROWS)

INSERT INTO Customer VALUES
(101,'Arun','Kumar','arun@gmail.com','9876543210','Arun@123','Chennai');

INSERT INTO Customer VALUES
(102,'Priya','Sharma','priya@gmail.com','9876543211','Priya@123','Madurai');

INSERT INTO Customer VALUES
(103,'Rahul','Verma','rahul@gmail.com','9876543212','Rahul@123','Salem');

INSERT INTO Customer VALUES
(104,'Sneha','Reddy','sneha@gmail.com','9876543213','Sneha@123','Coimbatore');

INSERT INTO Customer VALUES
(105,'Karthik','Raj','karthik@gmail.com','9876543214','Karthik@123','Trichy');

INSERT INTO Customer VALUES
(106,'Divya','Nair','divya@gmail.com','9876543215','Divya@123','Erode');

INSERT INTO Customer VALUES
(107,'Vignesh','Mohan','vignesh@gmail.com','9876543216','Vignesh@123','Vellore');

INSERT INTO Customer VALUES
(108,'Anjali','Gupta','anjali@gmail.com','9876543217','Anjali@123','Thanjavur');

INSERT INTO Customer VALUES
(109,'Rohit','Singh','rohit@gmail.com','9876543218','Rohit@123','Kanchipuram');

INSERT INTO Customer VALUES
(110,'Meena','Lakshmi','meena@gmail.com','9876543219','Meena@123','Tirunelveli');

-- READ

SELECT * FROM Customer;

-- UPDATE (3 ROWS)

UPDATE Customer
SET Phone='9123456789'
WHERE Customer_ID=101;

UPDATE Customer
SET Address='Bengaluru'
WHERE Customer_ID=105;

UPDATE Customer
SET Email='meena.new@gmail.com'
WHERE Customer_ID=110;

SELECT * FROM Customer;

-- DELETE (3 ROWS)

DELETE FROM Customer
WHERE Customer_ID=108;

DELETE FROM Customer
WHERE Customer_ID=109;

DELETE FROM Customer
WHERE Customer_ID=110;

SELECT * FROM Customer;

-- COMMIT

COMMIT;