-- 1 
SELECT first_name, surname, bill_date, count(bill_date) 
FROM restStaff INNER JOIN restBill ON restStaff.staff_no=restBill.waiter_no
WHERE (COUNT(bill_date) AND bill_date=bill_date) --?
GROUP BY bill_date

--2 
SELECT room_name, COUNT(*) FROM restRest_table WHERE no_of_seats>6 GROUP BY room_name;

-- 3
SELECT room_name, SUM(bill_total) FROM restBill INNER JOIN restRest_table ON restBill.table_no=restRest_table.table_no GROUP BY room_name;

-- 4 
SELECT first_name, surname, SUM(bill_total) FROM restStaff INNER JOIN restBill ON restStaff.staff_no=restBill.waiter_no --?
GROUP BY first_name ORDER BY DESC;


-- 5 
SELECT cust_name FROM restBill WHERE AVG(bill_total)>400 GROUP BY cust_name;

-- 6 
SELECT first_name, surname, COUNT(bill_no) FROM restStaff INNER JOIN restBill ON restStaff.staff_no=restBill.waiter_no 
IN (SELECT staff_no FROM restStaff INNER JOIN restBill ON restStaff.staff_no=restBill.waiter_no WHERE COUNT(bill_no)>=3); --?