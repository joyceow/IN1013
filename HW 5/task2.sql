-- 1
SELECT SUM(bill_total) AS "Income" FROM restBill;

--2
SELECT SUM(bill_total) AS "Feb Income" FROM restBill WHERE bill_date>160200 AND bill_date<160300;

--3
SELECT AVG(bill_total) FROM restBill WHERE table_no LIKE 2;

--4
SELECT MIN(no_of_seats) AS "Min", MAX(no_of_seats) AS "Max", AVG(no_of_seats) AS "Avg" FROM restRest_table WHERE room_name LIKE "Blue";

--5
SELECT COUNT(DISTINCT table_no) FROM restBill WHERE waiter_no LIKE 004 OR 002;