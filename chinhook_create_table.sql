create table student.dm_chin_playlist_track_test
("PlaylistId" int,
"TrackId" int);


create table student.dm_chin_album_test
("AlbumId" int,
"Title" varchar(110),
"ArtistId" int);


create table student.dm_chin_artist_test
("ArtistId" int,
"Name" varchar(95));


create table student.dm_chin_customer_test
("CustomerId" int,
"FirstName" varchar(12),
"LastName" varchar(15),
"Company" varchar(52),
"Address" varchar(49),
"City" varchar(25),
"State" varchar(11),
"Country" varchar(22),
"PostalCode" varchar(15), 
"Phone" varchar(25),
"Fax" varchar(24),
"Email" varchar(34),
"SupportRepId" int);



create table student.dm_chin_employee_test
("EmployeeId" int,
"LastName" varchar(15),
"FirstName" varchar(15),
"Title" varchar(25),
"ReportsTo" int,
"BirthDate" varchar(25), 
"HireDate" varchar(25),
"Address" varchar(32), 
"City" varchar(17),
"State" varchar(5),
"Country" varchar(12),
"PostalCode" varchar(12),
"Phone" varchar(24),
"Fax" varchar(22), 
"Email" varchar(32));


create table student.dm_chin_genre_test
("GenreId" int,
"Name" varchar(24));



create table student.dm_chin_invoice_test
("InvoiceId" int,
"CustomerId" int,
"InvoiceDate" varchar(25),
"BillingAddress" varchar(50),
"BillingCity" varchar(24),
"BillingState" varchar(13),
"BillingCountry" varchar(23), 
"BillingPostalCode" varchar(17),
"Total" float);

create table student.dm_chin_invoiceline_test
("InvoiceLineId" int,
"InvoiceId" int,
"TrackId" int,
"UnitPrice" float,
"Quantity" int);

create table student.dm_chin_mediatype_test
("MediaTypeId" int,
"Name" varchar(35));


create table student.dm_chin_playlist_test
("PlaylistId" int,
"Name" varchar(35));



create table student.dm_chin_track_test
("TrackId" int,
"Name" varchar(135),
"AlbumId" int,
"MediaTypeId" int,
"GenreId" int,
"Composer" varchar(199),
"Milliseconds" int, 
"Bytes" int,
"UnitPrice" float);

----------- query
select 
*
from 
student.dm_chin_album_test dcat;

select 
*
from 
student.dm_chin_artist_test dcat2;


select 
*
from 
student.dm_chin_customer_test dcct;

select 
*
from 
student.dm_chin_employee_test dcet;

select 
*
from 
student.dm_chin_genre_test dcgt;

select 
*
from 
student.dm_chin_invoice_test dcit;

select 
*
from 
student.dm_chin_invoiceline_test dcit;

select 
*
from 
student.dm_chin_mediatype_test dcmt;


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


