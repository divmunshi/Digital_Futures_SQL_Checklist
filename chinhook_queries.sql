---QC Checks didnt have enough time



--QC-1
SELECT COUNT(*)
FROM student.dm_chin_album_test ;

SELECT COUNT(*)
FROM student.dm_chin_artist_test;

SELECT COUNT(*)
FROM student.dm_chin_customer_test;

SELECT COUNT(*)
FROM student.dm_chin_employee_test;

SELECT COUNT(*)
FROM student.dm_chin_genre_test;

SELECT COUNT(*)
FROM student.dm_chin_invoice_test;

SELECT COUNT(*)
FROM student.dm_chin_invoiceline_test;

SELECT COUNT(*)
FROM student.dm_chin_mediatype_test;

SELECT COUNT(*)
FROM student.dm_chin_playlist_test;

SELECT COUNT(*)
FROM student.dm_chin_playlist_track_test;

SELECT COUNT(*)
FROM student.dm_chin_track_test;


-- qc2-- number of columns



SELECT COUNT(*)
FROM information_schema.columns
WHERE table_schema = 'student' AND table_name = 'dm_chin_album_test';


SELECT COUNT(*)
FROM information_schema.columns
WHERE table_schema = 'student' AND table_name = 'dm_chin_artist_test';

SELECT COUNT(*)
FROM information_schema.columns
WHERE table_schema = 'student' AND table_name = 'dm_chin_customer_test';

SELECT COUNT(*)
FROM information_schema.columns
WHERE table_schema = 'student' AND table_name = 'dm_chin_employee_test';

SELECT COUNT(*)
FROM information_schema.columns
WHERE table_schema = 'student' AND table_name = 'dm_chin_genre_test';

SELECT COUNT(*)
FROM information_schema.columns
WHERE table_schema = 'student' AND table_name = 'dm_chin_invoice_test';

SELECT COUNT(*)
FROM information_schema.columns
WHERE table_schema = 'student' AND table_name = 'dm_chin_invoiceline_test';

SELECT COUNT(*)
FROM information_schema.columns
WHERE table_schema = 'student' AND table_name = 'dm_chin_mediatype_test';

SELECT COUNT(*)
FROM information_schema.columns
WHERE table_schema = 'student' AND table_name = 'dm_chin_playlist_test';

SELECT COUNT(*)
FROM information_schema.columns
WHERE table_schema = 'student' AND table_name = 'dm_chin_playlist_track_test';

SELECT COUNT(*)
FROM information_schema.columns
WHERE table_schema = 'student' AND table_name = 'dm_chin_track_test';






--- Queries




--- Q1 Show the average duration of tracks in each playlist:


select 
*
from 
student.dm_chin_playlist_test dcpt;


select 
*
from 
student.dm_chin_playlist_track_test dcptt;

select 
*
from 
student.dm_chin_track_test dctt;

select 
playlist_test."Name" as playlist_name,
avg(track."Milliseconds") as average_duration
from 
student.dm_chin_playlist_test as playlist_test
inner join 
student.dm_chin_playlist_track_test as playlist_track on playlist_test."PlaylistId" = playlist_track."PlaylistId"
inner join 
student.dm_chin_track_test as track on playlist_track."TrackId" = track."TrackId"
group by 
playlist_name;

--Q2 Find the top 10 tracks with the highest unit price:

select 
*
from 
student.dm_chin_track_test as track
order by track."UnitPrice" desc
limit 10;

select 
track."Name",
track."UnitPrice"
from 
student.dm_chin_track_test as track
order by track."UnitPrice" desc
limit 10;
--- Q3 List top 15 customers who made the highest toal purchases? Can i try and merge first name and last name.
select 
*
from 
student.dm_chin_customer_test as customer
inner join student.dm_chin_invoice_test as invoice on customer."CustomerId" = invoice."CustomerId";

select 
customer."CustomerId",
customer."FirstName",
customer."LastName",
sum(invoice."Total") as purchasing_total_amount
from 
student.dm_chin_customer_test as customer
inner join student.dm_chin_invoice_test as invoice on customer."CustomerId" = invoice."CustomerId"
group by 
customer."CustomerId",
customer."FirstName",
customer."LastName"
order by 
purchasing_total_amount
limit 15;


--Q4-- what is the total sales per country and which country's customers do spend the most?

SELECT
  invoice."BillingCountry",
  SUM(invoice."Total") as total_sales
FROM 
student.dm_chin_invoice_test as invoice
GROUP BY invoice."BillingCountry"
ORDER BY total_sales DESC;


---- Q5 Top 5 most purchased songs. 




select 
test."Name",
count(test."Name") as count_of_purchase
from 
student.dm_chin_track_test as test
inner join student.dm_chin_invoiceline_test as invoice_line on test."TrackId"= invoice_line."TrackId" 
group by 
test."Name"
order by count_of_purchase desc 
limit 7;


--- Q6 Provide a query that shows the most purchased Media Type.
SELECT
  mt."Name" AS media_type_name,
  COUNT(il."InvoiceLineId") AS purchase_count
FROM
  student.dm_chin_invoiceline_test il
INNER JOIN student.dm_chin_track_test t ON il."TrackId" = t."TrackId"
INNER JOIN student.dm_chin_mediatype_test mt ON t."MediaTypeId" = mt."MediaTypeId"
GROUP BY
  mt."Name"
ORDER BY
  purchase_count DESC
LIMIT 1;


--- Q7 count the number of invoices per country

SELECT
  invoice."BillingCountry" AS country,
  COUNT(invoice."InvoiceId") AS invoice_count
FROM
  student.dm_chin_invoice_test invoice
GROUP BY
  invoice."BillingCountry"
ORDER BY
  invoice_count DESC;


--Q8 Count the number of tracks in each genre:

SELECT
  g."Name" AS genre_name,
  COUNT(t."TrackId") AS track_count
FROM
  student.dm_chin_track_test t
INNER JOIN student.dm_chin_genre_test g ON t."GenreId" = g."GenreId"
GROUP BY
  g."Name"
ORDER BY
  track_count DESC;
 
--Q9 total sales made by each sales agent.
 
 SELECT
  employee."FirstName" || ' ' || employee."LastName" AS sales_agent_name,
  SUM(invoice."Total") AS total_sales
FROM
  student.dm_chin_employee_test employee
INNER JOIN student.dm_chin_customer_test c ON employee."EmployeeId" = c."SupportRepId"
INNER JOIN student.dm_chin_invoice_test invoice ON c."CustomerId" = invoice."CustomerId"
GROUP BY
  employee."FirstName", employee."LastName"
ORDER BY
  total_sales DESC;



--- Q10 Which sales agent made the most in sales over all?
 
 SELECT
  e."FirstName" || ' ' || e."LastName" AS sales_agent_name,
  SUM(i."Total") AS total_sales
FROM
  student.dm_chin_employee_test e
INNER JOIN student.dm_chin_customer_test c ON e."EmployeeId" = c."SupportRepId"
INNER JOIN student.dm_chin_invoice_test i ON c."CustomerId" = i."CustomerId"
GROUP BY
  e."FirstName", e."LastName"
ORDER BY
  total_sales DESC
LIMIT 1;


