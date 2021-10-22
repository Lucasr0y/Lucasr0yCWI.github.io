/*****************************************************************************************************
*Date		Programmer		Description
*-----------------------------------------------------------
*10/08/2021	Luke Brandt		Initital implementation of disk db.
*10/14/2021		//		    Added number values to NVARCHAR, started adding values
*10/15/2021		//			Inserted Data for tables
*10/20/2021		//			Updated artist table, Fixed fatal error caused by disk_has_artist_table
*10/22/2021		//			Add SQL for reports
*****************************************************************************************************/
-- drop & create database
USE master;
DROP DATABASE IF EXISTS disk_inventorylb;
go
CREATE DATABASE disk_inventorylb;
go
-- create db user

Use master;
IF SUSER_ID('disk_inventorylb_user') IS NULL
	CREATE LOGIN disk_inventorylb_user WITH PASSWORD = 'MSPress#1',
    DEFAULT_DATABASE = disk_inventorylb;
go

	
USE disk_inventorylb;
DROP USER IF EXISTS disk_inventorylb_user;
CREATE USER disk_inventorylb_user;
go

-- grant read-all to new user alter db_datareader & add user
ALTER ROLE db_datareader ADD MEMBER disk_inventorylb_user;


-- create tables
CREATE TABLE disk_type
(disk_type_id	      INT IDENTITY PRIMARY KEY,
disk_type_description NVARCHAR(25) NOT NULL
);

CREATE TABLE status
(status_id			  INT IDENTITY PRIMARY KEY,
status_description    NVARCHAR(50) NOT NULL
);

CREATE TABLE genre
(genre_id		      INT IDENTITY PRIMARY KEY,
genre_description     NVARCHAR(50) NOT NULL
);

CREATE TABLE artist_type
(artist_type_id		    INT IDENTITY PRIMARY KEY,
artist_type_description NVARCHAR(50) NOT NULL
);

CREATE TABLE artist
(artist_id			 INT IDENTITY PRIMARY KEY,
artist_name			 NVARCHAR(50) NOT NULL,
artist_type_id		 INT NOT NULL REFERENCES artist_type (artist_type_id)
);

CREATE TABLE borrower
(borrower_id		INT IDENTITY PRIMARY KEY,
borrower_fname		NVARCHAR(25) NOT NULL,
borrower_lname		NVARCHAR(25) NOT NULL,
borrower_phone		NVARCHAR(25) NOT NULL
);

CREATE TABLE disk
(disk_id			INT IDENTITY PRIMARY KEY,
disk_name			NVARCHAR(50) NOT NULL,
genre_id			INT	     NOT NULL REFERENCES genre (genre_id),
disk_type_id		INT		 NOT NULL REFERENCES disk_type (disk_type_id),
release_date		DATE,
status_id			INT		 NOT NULL REFERENCES status (status_id),
);

CREATE TABLE disk_has_artist
(disk_has_artist_id		INT IDENTITY PRIMARY KEY,
disk_id					INT NOT NULL REFERENCES disk (disk_id),
artist_id				INT NOT NULL REFERENCES artist (artist_id)
);

-- disk_has_borrower checks to make sure that the returned date is not less than the borrowed_date
CREATE TABLE disk_has_borrower
(disk_has_borrower_id	INT IDENTITY PRIMARY KEY,
borrowed_date			DATE NOT NULL UNIQUE,
returned_date			DATE,
disk_id					INT NOT NULL REFERENCES disk (disk_id),
borrower_id				INT NOT NULL REFERENCES borrower (borrower_id),
CHECK (returned_date >= borrowed_date)
);
-- create indexes, if not done in table definition

--Populate Tables

INSERT INTO disk_type (disk_type_description)
VALUES
	('CD'),
	('Vinyl'),
	('Cassette')


INSERT INTO status
VALUES
	('Perfect Condition'),
	('Great Condition'),
	('Good Condition'),
	('Ok Condition'),
	('Bad Condition')

INSERT INTO genre
VALUES
	('Rock'),
	('Rap'),
	('Indie'),
	('Classical'),
	('Electronic'),
	('Soundtrack'),
	('Country')

INSERT INTO artist_type
VALUES
	('Solo'),
	('Duo'),
	('Group'),
	('Various')

--Artist table:

--1. Insert at least 20 rows of data into the table using real-world artist names

--2. At least 1 artist is known by 1 name and is a group

--3. At least 1 artist is known by 1 name and is an individual artist

--4. At least 1 artist has only 2 words in the name

--5. At least 1 artist has more than 2 words in the name
INSERT INTO artist
VALUES 
	('Youth Lagoon', 1),
	('Weezer', 3), -- one name and is a group
	('Deadmau5', 1),-- one name and is solo
	('Green Day', 3), -- only 2 words in the name
	('Four Year Strong', 3),-- more than 2 words
	('Daft Punk', 2),
	('Justice', 2),
	('Blink-182', 3),
	('Led Zepplin', 3),
	('Macklemore', 1),
	('Childish Gambino', 1),
	('A Day to Remember', 3),
	('John Williams', 1),
	('Gorillaz', 3),
	('Jack Johnson', 1),
	('Hobo Johnson', 1),
	('Dance Gavin Dance', 3),
	('Joji', 1),
	('Amine', 1),
	('Death From Above 1979', 2),
	('Royal Blood', 2),
	('Ryan Lewis',1)

	

--Borrower table:

--1. Insert at least 20 rows of data into the table using real-world borrower names

--2. Delete only 1 row using a where clause

INSERT INTO borrower
Values
	('Grant','Wallace', '123-859-8796'),
	('Karen','Denis', '235-654-8989'),
	('Jon','Willis', '654-899-8754'),
	('Clifton','Williams', '252-565-8798'),
	('Joy','Payne', '654-865-8787'),
	('Sergio','Taylor', '256-667-8654'),
	('Rose','Holland', '544-856-8756'),
	('Alison','Castillo', '412-565-8765'),
	('Carl','Adkins', '565-898-7856'),
	('Kate','Cunningham', '254-654-8621'),
	('Samuel','Chavez', '654-825-4568'),
	('Renee','Shelton', '685-484-5987'),
	('Ann','Morales', '987-785-8546'),
	('Duane','Keller', '564-486-4879'),
	('Cecil','Woods', '649-858-9756'),
	('Anna','Shultz', '654-825-8797'),
	('Sammy','Silva', '987-788-8549'),
	('Lynn','Moreno', '566-848-8798'),
	('Garret','Banks', '655-458-8524'),
	('Erin','Romero', '775-895-8654')

DELETE 
FROM borrower
WHERE borrower_lname = 'Romero'

-- Disk table:
--1. Insert at least 20 rows of data into the table using real-world disk names

--2. Update only 1 row using a where clause

--3. At least 1 disk has only 1 word in the name

--4. At least 1 disk has only 2 words in the name

--5. At least 1 disk has more than words in the name

INSERT INTO disk
VALUES
	('The Year of Hibernation',3,2,'09-27-2011',2),
	('Weezer',1,1,'05-10-1994',2), --At least 1 disk has only 1 word in the name
	('4X4=12',5,2,'12-06-2010',3), -- At least 1 disk has more than words in the name
	('American Idiot',1,1,'09-21-2004',4), -- At least 1 disk has only 2 words in the name
	('Enemy of the World',1,1,'12-21-2009',1),
	('Alive 2007',5,2,'09-19-2007',2),
	('Cross',5,1,'06-11-2007',2),
	('California',1,1,'06-1-2016',1),
	('Houses of the Holy',1,2,'03-28-1973',4),
	('The Heist',2,1,'10-09-2012',3),
	('Because the Internet',2,1,'12-10-2013',2),
	('Homesick',1,1,'02-03-2009',3),
	('Star Wars: Episode III – Revenge of the Sith',6,1,'05-03-2005',2),
	('Demon Days',2,2,'05-23-2005',2),
	('In Between Dreams',3,3,'03-01-2005',3),
	('The Fall of Hobo Johnson',2,1,'09-19-2019',4),
	('Artificial Selection',1,2,'06-08-2021',2),
	('Ballads 1',2,1,'10-26-2018',1),
	('Good For You',2,1,'07-28-2017',2),
	('Outrage! Is Now',1,3,'09-08-2017',3),
	(' We Get So Dark?',1,2,'06-16-2017',2),
	('Pinkerton', 1,1, '09-24-1996', 3)

UPDATE disk
SET disk_name = 'How Did We Get So Dark?'
WHERE disk_id = 21

--DiskHasArtist table:

--1. Insert at least 20 rows of data into the table

--2. At least 1 disk must have at least 2 different artist rows here

--3. At least 1 artist must have at least 2 different disk rows here

--4. Correct variation of disk & artist data similar to DiskHasBorrower

INSERT INTO disk_has_artist
	(disk_id, artist_id)
Values
	(1,1),
	(2,2), 
	(22,2), -- 1 artist has multiple disks
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7),
	(8,8),
	(9,9),
	(10,10),
	(10,22), -- disk has multiple artists this one
	(11,11),
	(12,12),
	(13,13),
	(14,14),
	(15,15),
	(16,16),
	(17,17),
	(18,18),
	(19,19),
	(20,20),
	(21,21)

--select disk_name, artist_name from disk_has_artist
--Join disk
--	ON disk.disk_Id = disk_has_artist.disk_id
--JOIN artist
--	ON artist.artist_id = disk_has_artist.artist_id

--1. Insert at least 20 rows of data into the table
--2. Insert at least 2 different disks
--3. Insert at least 2 different borrowers
--4. At least 1 disk has been borrowed by the same borrower 2 different times
--5. At least 1 disk in the disk table does not have a related row here
--6. At least 1 disk must have at least 2 different rows here
--7. At least 1 borrower in the borrower table does not have a related row here
--8. At least 1 borrower must have at least 2 different rows here
INSERT INTO disk_has_borrower
	(borrowed_date, returned_date, disk_id/*5*/, borrower_id/*11*/)
VALUES
	('06-05-2017', '07-09-2017', 2, 2),
	('08-21-2020', NULL, 2, 2), -- At least 1 disk has been borrowed by the same borrower 2 different times 
	('01-25-2010', '06-03-2012', 15, 4),
	('05-02-2014', '11-10-2014', 20, 15),
	('10-10-2013', '12-12-2013', 10, 6),
	('01-22-2013', '07-18-2015', 9, 5),
	('04-25-2020', '02-22-2021', 12, 5), -- At least 1 borrower must have at least 2 different rows here
	('02-14-2020', NULL,6 , 13),
	('07-05-2017', '08-08-2017', 10, 3),
	('09-14-2021', NULL, 7, 18),
	('01-20-2020', '02-10-2020', 10, 7),-- At least 1 disk must have at least 2 different rows here
	('08-20-2020', '09-01-2020', 18, 19),
	('10-20-2015', '07-13-2017', 11, 9),
	('03-13-2020', '01-05-2021', 7, 4),
	('06-15-2011', '08-19-2012', 16, 3),
	('10-10-2021', NULL, 13, 17),
	('09-22-2014', '04-12-2019', 18, 4),
	('08-15-2011', '09-29-2013',6 , 13),
	('07-10-2017', '03-02-2018', 14, 10),
	('01-20-2021', NULL, 16, 1)

----7. At least 1 borrower in the borrower table does not have a related row here
--SELECT 
--	disk_has_borrower.borrower_id, disk.disk_id, disk_name,
--		borrowed_date, returned_date
--FROM disk_has_borrower
--Join disk
--	on disk_has_borrower.disk_id = disk.disk_id
--WHERE disk_has_borrower.borrower_id = 11

----5. At least 1 disk in the disk table does not have a related row here
--SELECT 
--	disk_has_borrower.borrower_id, disk.disk_id, disk_name,
--		borrowed_date, returned_date
--FROM disk_has_borrower
--Join disk
--	on disk_has_borrower.disk_id = disk.disk_id
--WHERE disk.disk_id = 5

--Create a query to list the disks that are on loan and have not been returned
SELECT 
	disk_has_borrower.borrower_id, (borrower_fname + ' ' + borrower_lname) AS 'Borrower Name', disk.disk_id, disk_name,
		borrowed_date, returned_date
FROM disk_has_borrower
Join disk
	on disk_has_borrower.disk_id = disk.disk_id
Join borrower
	on disk_has_borrower.borrower_id = borrower.borrower_id
WHERE returned_date IS NULL
ORDER BY borrowed_date


--PROJECT 4
USE disk_inventorylb;
go


-- step 4
-- creates a view to show the first and last name of artists stored as FIRST and LAST
DROP VIEW IF EXISTS View_Individual_Artist
go

CREATE VIEW View_Individual_Artist
	AS SELECT artist_id,
	IIF(CHARINDEX(' ', artist_name) >0,
		LEFT(artist_name, CHARINDEX(' ', artist_name)-1),artist_name) AS First,
	IIF(CHARINDEX(' ', artist_name) >0,
		RIGHT(artist_name, LEN(artist_name) - CHARINDEX(' ', artist_name)), '') AS Last
	From Artist
	WHERE artist_type_id = 1;
go

SELECT FIRST as 'Artist First Name', LAST as 'Artist Last Name'
FROM View_Individual_Artist

--step 3
--Show the disks in your database and  any associated individual artists only. (uses view from step 4)
select disk_name,release_date, FIRST as 'Artist First Name', LAST as 'Artist Last Name'
from disk_has_artist
Join disk
	ON disk.disk_Id = disk_has_artist.disk_id
JOIN View_Individual_Artist
	ON disk_has_artist.artist_id = View_Individual_Artist.artist_id

-- Step 5 Show the disks in your database and any associated Group artists only

SELECT disk_name,release_date, artist_name AS 'Group Name'
from disk_has_artist
Join disk
	ON disk.disk_Id = disk_has_artist.disk_id
Join artist
	ON disk_has_artist.artist_id = artist.artist_id 
	WHERE artist_type_id > 1;

-- step 6 Re-write the previous query using the View_Individual_Artist view. Do not redefine the view. Consider using ‘NOT EXISTS’ or ‘NOT IN’ as the only restriction in the WHERE clause or a join. The output matches the output from the previous query.
SELECT disk_name,release_date, artist_name AS 'Group Name'
from disk_has_artist
Join disk
	ON disk.disk_Id = disk_has_artist.disk_id
Join artist
	ON disk_has_artist.artist_id = artist.artist_id 
	WHERE artist.artist_id  NOT IN
		(SELECT artist_id
			FROM View_Individual_Artist);

--7 Show the borrowed disks and who borrowed them
SELECT borrower_fname AS First, borrower_lname AS Last, disk_name,
		borrowed_date, returned_date
FROM disk_has_borrower
Join disk
	on disk_has_borrower.disk_id = disk.disk_id
Join borrower
	on disk_has_borrower.borrower_id = borrower.borrower_id

--8 Show the number of times a disk has been borrowed.
SELECT disk.disk_id, disk_name, COUNT(disk_name) as 'Times Borrowed'
FROM disk
Join disk_has_borrower
	on disk_has_borrower.disk_id = disk.disk_id
GROUP BY disk_name, disk.disk_id
ORDER BY 'Times Borrowed' DESC

--9 Show the disks outstanding or on-loan and who has each disk.
SELECT disk_name, borrowed_date, returned_date, borrower_lname AS 'Last Name'
FROM disk_has_borrower
Join disk
	on disk_has_borrower.disk_id = disk.disk_id
Join borrower
	on disk_has_borrower.borrower_id = borrower.borrower_id
WHERE returned_date IS NULL
ORDER BY borrowed_date
