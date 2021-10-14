/*****************************************************************************************************
*Date		Programmer		Description
*-----------------------------------------------------------
*10/08/2021	Luke Brandt		Initital implementation of disk db.
*10/14/2021				Added number values to NVARCHAR
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
(disk_type_id	      INT PRIMARY KEY,
disk_type_description NVARCHAR(25) NOT NULL
);

CREATE TABLE status
(status_id			  INT PRIMARY KEY,
status_description    NVARCHAR(50) NOT NULL
);

CREATE TABLE genre
(genre_id		      INT PRIMARY KEY,
genre_description     NVARCHAR(50) NOT NULL
);

CREATE TABLE artist_type
(artist_type_id		    INT PRIMARY KEY,
artist_type_description NVARCHAR(50) NOT NULL
);

CREATE TABLE artist
(artist_id			 INT PRIMARY KEY,
artist_name			 NVARCHAR(50) NOT NULL,
artist_type_id		 INT NOT NULL REFERENCES artist_type (artist_type_id)
);

CREATE TABLE borrower
(borrower_id		INT PRIMARY KEY,
borrower_fname		NVARCHAR(25) NOT NULL,
borrower_lname		NVARCHAR(25) NOT NULL,
borrower_phone		NVARCHAR(25) NOT NULL
);

CREATE TABLE disk
(disk_id			NVARCHAR(50) PRIMARY KEY,
disk_name			NVARCHAR(50) NOT NULL,
genre_id			INT	     NOT NULL REFERENCES genre (genre_id),
disk_type_id		INT		 NOT NULL REFERENCES disk_type (disk_type_id),
release_date		DATE,
status_id			INT		 NOT NULL REFERENCES status (status_id),
);

CREATE TABLE disk_has_artist
(disk_has_artist_id		INT PRIMARY KEY,
disk_id					NVARCHAR(50) NOT NULL REFERENCES disk (disk_id),
artist_id				INT NOT NULL REFERENCES artist (artist_id)
);

-- disk_has_borrower checks to make sure that the returned date is not less than the borrowed_date
CREATE TABLE disk_has_borrower
(disk_has_borrower_id	INT PRIMARY KEY,
borrowed_date			DATE NOT NULL UNIQUE,
returned_date			DATE,
disk_id					NVARCHAR(50) NOT NULL REFERENCES disk (disk_id),
borrower_id				INT NOT NULL REFERENCES borrower (borrower_id),
CHECK (returned_date >= borrowed_date)
);
-- create indexes, if not done in table definition
