CREATE TABLE Orders (
    Order_ID NUMBER(5) PRIMARY KEY,
    Customer_ID NUMBER(5),
    Order_Date DATE,
    Total_Amount NUMBER(10,2),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);



INSERT INTO Orders VALUES
(1001, 101, TO_DATE('23-09-2026','DD-MM-YYYY'), 2500.00);

INSERT INTO Orders VALUES
(1002, 102, TO_DATE('23-09-2026','DD-MM-YYYY'), 1800.00);

INSERT INTO Orders VALUES
(1003, 103, TO_DATE('22-09-2026','DD-MM-YYYY'), 3200.00);

INSERT INTO Orders VALUES
(1004, 104, TO_DATE('21-09-2026','DD-MM-YYYY'), 1500.00);

INSERT INTO Orders VALUES
(1005, 105, TO_DATE('20-09-2026','DD-MM-YYYY'), 2750.00);




SELECT * FROM Orders;


CREATE TABLE Order_Details (
    Order_Detail_ID NUMBER(5) PRIMARY KEY,
    Order_ID NUMBER(5),
    Product_ID NUMBER(5),
    Quantity NUMBER(5),
    Total_Amount NUMBER(10,2),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);



INSERT INTO Order_Details VALUES
(1, 1001, 201, 2, 2000.00);

INSERT INTO Order_Details VALUES
(2, 1001, 202, 1, 500.00);

INSERT INTO Order_Details VALUES
(3, 1002, 203, 2, 1800.00);

INSERT INTO Order_Details VALUES
(4, 1003, 204, 1, 3200.00);

INSERT INTO Order_Details VALUES
(5, 1004, 205, 3, 1500.00);




SELECT * FROM Order_Details;




UPDATE Orders
SET Total_Amount = 2800.00
WHERE Order_ID = 1001;




SELECT * FROM Orders
WHERE Order_ID = 1001;




SELECT 
    Customer_ID,
    Order_ID,
    Order_Date,
    Total_Amount
FROM Orders
ORDER BY Order_Date DESC;


COMMIT;