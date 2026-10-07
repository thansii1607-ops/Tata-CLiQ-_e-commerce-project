CREATE TABLE Payment (
    Payment_ID NUMBER(5) PRIMARY KEY,
    Order_ID NUMBER(5),
    Payment_Date DATE,
    Payment_Method VARCHAR2(30),
    Amount NUMBER(10,2),
    Payment_Status VARCHAR2(20),
    Transaction_ID VARCHAR2(50) UNIQUE
);

INSERT INTO Payment VALUES (1, 1001, TO_DATE('20-09-2026','DD-MM-YYYY'), 'UPI', 2500, 'Success', 'TXN10001');
INSERT INTO Payment VALUES (2, 1002, TO_DATE('21-09-2026','DD-MM-YYYY'), 'Credit Card', 1800, 'Success', 'TXN10002');
INSERT INTO Payment VALUES (3, 1003, TO_DATE('22-09-2026','DD-MM-YYYY'), 'Debit Card', 3200, 'Success', 'TXN10003');
INSERT INTO Payment VALUES (4, 1004, TO_DATE('23-09-2026','DD-MM-YYYY'), 'Cash on Delivery', 1500, 'Pending', 'TXN10004');
INSERT INTO Payment VALUES (5, 1005, TO_DATE('24-09-2026','DD-MM-YYYY'), 'UPI', 4200, 'Success', 'TXN10005');

COMMIT;


SELECT * 
FROM Payment
WHERE Payment_Status = 'Success';


SELECT * 
FROM Payment
WHERE Payment_Status = 'Failed';


UPDATE Payment
SET Payment_Status = 'Success'
WHERE Payment_ID = 4;

COMMIT;


SELECT * 
FROM Payment
WHERE Payment_ID = 4;


SELECT Payment_Status, COUNT(*) AS Total_Payments
FROM Payment
GROUP BY Payment_Status;


SELECT Payment_ID, Order_ID, Payment_Date, Payment_Method, Amount, Payment_Status, Transaction_ID
FROM Payment
ORDER BY Payment_Date;
