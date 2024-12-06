-- 1 
SELECT DISTINCT cust_name FROM restBill WHERE waiter_no IN 
    (SELECT DISTINCT S2.staff_no FROM restStaff S1 INNER JOIN restStaff S2 WHERE
        (SELECT DISTINCT S2.staff_no FROM S2 WHERE headwaiter = 
            (SELECT S1.staff_no FROM S1 WHERE first_name="Charles")) AND bill_total>450.00);

-- 2 
SELECT S1.first_name, S1.surname FROM restStaff S1 WHERE staff_no IN 
    (SELECT DISTINCT S2.headwaiter FROM restStaff S2 WHERE S2.staff_no IN
        (SELECT DISTINCT waiter_no FROM restBill WHERE cust_name="Nerida" AND bill_date=160111));

-- 3 
SELECT B1.cust_name FROM restBill B1 WHERE B1.bill_total IN 
    (SELECT B2.bill_total FROM restBill B2 WHERE B2.bill_total=MIN(B2.bill_tota));

-- 4
SELECT first_name FROM restStaff WHERE staff_no NOT IN 
(SELECT DISTINCT waiter_no FROM restBill)

-- 5 
SELECT B1.cust_name, S1.first_name, S1.surname, RM1.room_name FROM 
restBill B1 INNER JOIN restStaff S1 ON B1.waiter_no=S1.staff_no INNER JOIN restRoom_management RM1 ON RM1.headwaiter=S1.staff_no WHERE B1.bill_total IN 
(SELECT B2.bill_total FROM restBill B2 WHERE B2.bill_total=MAX(B2.bill_total));