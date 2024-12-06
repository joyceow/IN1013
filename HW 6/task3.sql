-- 1 
SELECT DISTINCT first_name FROM restStaff INNER JOIN restBill ON restStaff.staff_no=restBill.waiter_no WHERE cust_name="Tanya Singh";

-- 2
SELECT room_date FROM restRoom_management INNER JOIN restStaff ON restStaff.staff_no=restRoom_management.headwaiter WHERE first_name="Charles" and room_name="Green" and (room_date>160200 and room_date<160300);

-- 3
SELECT SS2.first_name, S2.surname FROM restStaff S1 INNER JOIN restStaff S2 ON S1.staff_no=S2.staff_no WHERE S1.first_name="Zoe" AND S1.surname="Ball" AND S1.headwaiter=S2.headwaiter;

-- 4 
SELECT cust_name, bill_total, first_name FROM restBill INNER JOIN restStaff ON restBill.waiter_no=restStaff.staff_no ORDER BY ASC;

-- 5 
SELECT S1.first_name, S1.surname FROM restStaff S1 INNER JOIN restBill B ON B.waiter_no=S1.staff_no INNER JOIN restStaff S2 ON B.waiter_no=S2.staff_no
WHERE (bill_no=00014 OR bill_no=00017) AND (B.waiter_no=S2.staff_no AND S1.headwaiter=S2.headwaiter);

-- 6 
SELECT first_name, surname FROM restStaff INNER JOIN restRoom_management ON restRoom_management.headwaiter INNER JOIN restBill ON restBill.waiter_no=restStaff.staff_no
WHERE room_name="Blue" AND (restStaff.headwaiter=restBill.headwaiter OR restStaff.staff_no=restBill.headwaiter) AND bill_date=160312;