-----------------------------------------------------------------------------------------------------------
-------- CONTENTS
-----------------------------------------------------------------------------------------------------------
/*
QC-1		COUNT OF ROWS
QC-2		COUNT OF DISTINCT ROWS
QC-3		COUNT OF COLUMNS
QC-4		SUM OF COLUMN SUMS
QC-5		SUM OF ROW SUMS
QC-DF 		DATE FORMAT CHECK
QC-EC		EYEBALL CHECK
QC-NC		COUNT OF NULLS
QC-SMM		SUM, MIN, MAX
*/
-----------------------------------------------------------------------------------------------------------
-------- Instructions 
-----------------------------------------------------------------------------------------------------------
   
--QC-1    Count of Rows
select 
count(*)
from
student.ay_query_crew_attempt_test;

--QC-2    Count of Distinct Rows
select 
count(distinct "ID")
from
student.ay_query_crew_attempt_test;

--QC-3    Count of columns

select 
count(*)
from
information_schema.columns
where table_name = 'ay_query_crew_attempt_test'




---------------SUM OF COLUMNS--------------
--QC-4

SELECT 
    SUM("ID")+SUM("Qtr"::int)+SUM("Year")+SUM("Month")+SUM("Date_1")+SUM("Special Day")+SUM("Online Sale Offers ")+SUM("Day")+SUM("Weekend")+SUM("Morning")+SUM("Afternoon")+SUM("Evening")+SUM("Night")+SUM("Gender")+SUM("Quantity")+SUM("Item Price")+SUM("Shipping-Price")+SUM("Total_amount")+SUM("Profit Percentage (%)")+SUM("Profit (INR)")+SUM("Cost Price")
FROM
    student.ay_query_crew_attempt_test aqca 
;


---------------SUM OF SUM OF ROWS--------------
--QC-5

SELECT 
    "ID" ,
    "ID"+"Qtr"::int+"Year"+"Month" +"Date_1" +"Special Day" +"Online Sale Offers " +"Day" +"Weekend" +"Morning" +"Afternoon" + "Evening" +"Night" +"Gender" +"Quantity" +"Item Price" +"Shipping-Price" +"Total_amount" +"Profit Percentage (%)" +"Profit (INR)" +"Cost Price" AS row_sums
FROM 
    student.ay_query_crew_attempt_test aqca 
;

SELECT 
SUM("ID"+"Qtr"::int+"Year"+"Month" +"Date_1" +"Special Day" +"Online Sale Offers " +"Day" +"Weekend" +"Morning" +"Afternoon" + "Evening" +"Night" +"Gender" +"Quantity" +"Item Price" +"Shipping-Price" +"Total_amount" +"Profit Percentage (%)" +"Profit (INR)" +"Cost Price")
FROM 
    student.ay_query_crew_attempt_test aqca 
;


--QC-DF-1
SELECT "ID", "Date" 
FROM student.ay_query_crew_attempt_test aqca
WHERE "ID" = 500;

--QC-DF-2
SELECT "ID", "Date" 
FROM student.ay_query_crew_attempt_test aqca
WHERE "ID" = 1000;

--QC-DF-3
SELECT "ID", "Date" 
FROM student.ay_query_crew_attempt_test aqca
WHERE "ID" = 1500;

--QC-DF-4
SELECT "ID", "Date" 
FROM student.ay_query_crew_attempt_test aqca
WHERE "ID" = 2000;

--QC-DF-5
SELECT "ID", "Date" 
FROM student.ay_query_crew_attempt_test aqca
WHERE "ID" = 2500;

--QC-EC-1
SELECT 
* 
FROM student.ay_query_crew_attempt_test aqca
WHERE "ID" = 123;

--QC-EC-2
SELECT 
*
FROM student.ay_query_crew_attempt_test aqca
WHERE "ID" = 234;

--QC-EC-3
SELECT 
*
FROM student.ay_query_crew_attempt_test aqca
WHERE "ID" = 1829;

--QC-EC-4
SELECT 
*
FROM student.ay_query_crew_attempt_test aqca
WHERE "ID" = 2222;

--QC-EC-5
SELECT 
*
FROM student.ay_query_crew_attempt_test aqca
WHERE "ID" = 2345;


----------------------------NULL Checks----------------------------------
--QC-NC-1
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "ID" IS NULL
;

--QC-NC-2
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Purchase-date"  IS NULL
;

--QC-NC-3
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Date"  IS NULL
;

--QC-NC-4
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Time"  IS NULL
;

--QC-NC-5
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Quarter"  IS NULL
;

--QC-NC-6
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Qtr"  IS NULL
;

--QC-NC-7
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Year"  IS NULL
;

--QC-NC-8
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Month"  IS NULL
;

--QC-NC-9
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Date_1"  IS NULL
;

--QC-NC-10
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE  "Special Day"  IS NULL
;
    

--QC-NC-11
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Online Sale Offers "  IS NULL
;

--QC-NC-12
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Day" IS NULL
;

--QC-NC-13
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Weekend"  IS NULL
;

--QC-NC-14
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE  "Morning" IS NULL
;

--QC-NC-15
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Afternoon"  IS NULL
;


--QC-NC-16
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Evening" IS NULL
;

--QC-NC-17
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE  "Night"  IS NULL
;

--QC-NC-18
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Gender"  IS NULL
;

--QC-NC-19
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Customer ID"  IS NULL
;

--QC-NC-20
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Gender F=1665 M=1815"  IS NULL
;

--QC-NC-21
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Product-Name"  IS NULL
;

--QC-NC-22
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Item-Status"  IS NULL
;

--QC-NC-23
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Quantity"  IS NULL
;

--QC-NC-24
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Currency"  IS NULL
;

--QC-NC-25
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Item Price"  IS NULL
;

--QC-NC-26
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Shipping-Price"  IS NULL
;

--QC-NC-27
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Ship-City"  IS NULL
;


--QC-NC-28
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Ship-State"  IS NULL
;

--QC-NC-29
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Ship-Postal-Code"  IS NULL
;

--QC-NC-30
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Category"  IS NULL
;

--QC-NC-31
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Total_amount"  IS NULL
;

--QC-NC-32
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test 
WHERE "Author"  IS NULL
;

--QC-NC-33
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Publication"  IS NULL
;

--QC-NC-34
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Profit Percentage (%)"  IS NULL
;

--QC-NC-35
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Profit (INR)"  IS NULL
;

--QC-NC-36
SELECT 
    count(*)
FROM 
    student.ay_query_crew_attempt_test
WHERE "Cost Price"  IS NULL
;
-------------------------------------------------------------------------------------------------

--QC-SMM-1
    
SELECT SUM("ID") AS total_sum,
       MIN("ID") AS minimum_value,
       MAX("ID") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-2

SELECT SUM("Year") AS total_sum,
       MIN("Year") AS minimum_value,
       MAX("Year") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-3

SELECT SUM("Month") AS total_sum,
       MIN("Month") AS minimum_value,
       MAX("Month") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-4

SELECT SUM("Date_1") AS total_sum,
       MIN("Date_1") AS minimum_value,
       MAX("Date_1") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-5

SELECT SUM("Special Day") AS total_sum,
       MIN("Special Day") AS minimum_value,
       MAX("Special Day") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-6

SELECT SUM("Online Sale Offers ") AS total_sum,
       MIN("Online Sale Offers ") AS minimum_value,
       MAX("Online Sale Offers ") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-7

SELECT SUM("Day") AS total_sum,
       MIN("Day") AS minimum_value,
       MAX("Day") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-8

SELECT SUM("Weekend") AS total_sum,
       MIN("Weekend") AS minimum_value,
       MAX("Weekend") AS maximum_value
FROM student.ay_query_crew_attempt_test;

----QC-SMM-9

SELECT SUM("Morning") AS total_sum,
       MIN("Morning") AS minimum_value,
       MAX("Morning") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-10

SELECT SUM("Afternoon") AS total_sum,
       MIN("Afternoon") AS minimum_value,
       MAX("Afternoon") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-11

SELECT SUM("Evening") AS total_sum,
       MIN("Evening") AS minimum_value,
       MAX("Evening") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-12

SELECT SUM("Night") AS total_sum,
       MIN("Night") AS minimum_value,
       MAX("Night") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-13

SELECT SUM("Gender") AS total_sum,
       MIN("Gender") AS minimum_value,
       MAX("Gender") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-14

SELECT SUM("Quantity") AS total_sum,
       MIN("Quantity") AS minimum_value,
       MAX("Quantity") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-15

SELECT SUM("Item Price") AS total_sum,
       MIN("Item Price") AS minimum_value,
       MAX("Item Price") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-16

SELECT SUM("Shipping-Price") AS total_sum,
       MIN("Shipping-Price") AS minimum_value,
       MAX("Shipping-Price") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-17

SELECT SUM("Total_amount") AS total_sum,
       MIN("Total_amount") AS minimum_value,
       MAX("Total_amount") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-18

SELECT SUM("Profit Percentage (%)") AS total_sum,
       MIN("Profit Percentage (%)") AS minimum_value,
       MAX("Profit Percentage (%)") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-19

SELECT SUM("Cost Price") AS total_sum,
       MIN("Cost Price") AS minimum_value,
       MAX("Cost Price") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-20

SELECT SUM("Profit (INR)") AS total_sum,
       MIN("Profit (INR)") AS minimum_value,
       MAX("Profit (INR)") AS maximum_value
FROM student.ay_query_crew_attempt_test;

--QC-SMM-21
select 
SUM("Qtr"::int) as total_qtr,
min("Qtr"::int) as minimum_value,
max("Qtr"::int) as maximum_value
from student.ay_query_crew_attempt_test aqcat;