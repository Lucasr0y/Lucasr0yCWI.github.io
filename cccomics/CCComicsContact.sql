#**********************************************************************
#SCript to create caped crusader comics database & add test data
#Name                   Date                    Description
#Luke Brandt		8/27/2021		Initial deployment
#
#**********************************************************************
DROP DATABASE IF EXISTS ccComicsContact;
CREATE DATABASE ccComicsContact;

use ccComicsContact;
CREATE TABLE IF NOT EXISTS employee
(
	employee_id	INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	first_name	VARCHAR(255) NOT NULL, 
	last_name	VARCHAR(255) NOT NULL,
	email_address	VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE if NOT EXISTS contact_table
(
	contact_info_id	INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	contact_name		VARCHAR(255) NOT NULL,
	contact_email		VARCHAR(255) NOT NULL,
	contact_phone		VARCHAR(255) NOT NULL,
	contact_reason		VARCHAR(50)  NOT NULL,
	contact_method		VARCHAR(255),
	contact_comments	VARCHAR(255),
	contact_date		DATETIME     NOT NULL,
	employee_id		INT NOT NULL,
	FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);


# Insert statements for employee table
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Peter', 'Parker', 'peter@gmail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Tony', 'Stark', 'iamironman@gmail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Steve', 'Rogers', 'capA@gmail.com');
	
#insert all below

INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Bruce', 'Wayne', 'batman@gmail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Clark', 'Kent', 'superman@mail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Darth', 'Vader', 'darth@gmail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Luke', 'Skywalker', 'skywalker@gmail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Obi', 'Kenobi', 'hellothere@gmail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Anakin', 'Skywalker', 'anakin@gmail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Wade', 'Wilson', 'wade@mail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Lois', 'Lane', 'lois@gmail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Wonder', 'Woman', 'wonderwoman@gmail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Jack', 'Johnson', 'johnson@gmail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Real', 'Human', 'realhuman@gmail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Homer', 'Simpson', 'simpson@mail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Walt', 'Disney', 'disney@gmail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Stan', 'Lee', 'marvel@gmail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Jack', 'White', 'whitestripes@gmail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Kurt', 'Cobain', 'nirvana@gmail.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Dave', 'Grohl', 'foof@mail.com');
	
# insert data for contact_table
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Peter', 'peter@gmail.com', '123', 'reason', 'email', 'hello', NOW(), 1);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Mark Markson', 'mark@gmail.com', '223', 'mark reason', 'phone', 'how are you', NOW(), 3);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Daniall Bautista', 'daniall@gmail.com', '323', 'daniall reason', 'text', 'happy monday', NOW(), 5);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Amna Morely', 'amna@gmail.com', '2345', 'amna reason', 'phone', 'hello there', NOW(), 3);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Stefan Mata', 'stefan@gmail.com', '2345223', 'stefan reason', 'text', 'hi there', NOW(), 7);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Tomasz Clickers', 'tomazx@gmail.com', '212323', 'tom reason', 'phone', 'how are you today', NOW(), 18);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Jarvis Simmonds', 'jarvis@gmail.com', '22467893', 'jarvis reason', 'email', 'I am good, how are you', NOW(), 3);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Caleb Rodriquez', 'caleb@gmail.com', '22387878', 'Caleb reason', 'phone', 'That is good I am good as well', NOW(), 12);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Willem Cob', 'wcob@gmail.com', '2123893', 'willem reason', 'text', 'Good! what are you doing?', NOW(), 5);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Karishma Cote', 'kcote@gmail.com', '123456', 'Karishma reason', 'text', 'Nothing much, just typing and you?', NOW(), 1);

# 10 more contacts

INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Magnus Field', 'magnus@gmail.com', '53453123', 'magnus reason', 'email', 'Typing as well', NOW(), 12);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Aalia More', 'Alia@gmail.com', '211123', 'Aalia reason', 'phone', 'That is good, what are you typing?', NOW(), 14);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Hadley Shelton', 'Hadley@gmail.com', '5433323', 'Hadley reason', 'text', 'I am inputing data for a table', NOW(), 5);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Bo Morales', 'bMorales@gmail.com', '4545345', 'bo reason', 'phone', 'Oh no way! So am I!', NOW(), 17);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Ishaq Lennon', 'iLennon@gmail.com', '234234', 'Ishaq reason', 'text', 'It is alot of data', NOW(), 5);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Habib Watkins', 'hWatkins@gmail.com', '2122343', 'habib reason', 'phone', 'It sure is', NOW(), 18);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Jolene Davidson', 'davidson@gmail.com', '4832948', 'Jolene reason', 'email', 'I realized something though.', NOW(), 3);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Cavan Jeffery', 'cavan@gmail.com', '2238118', 'Cavan reason', 'phone', 'Oh what is it?', NOW(), 12);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Tim Rishmond', 'richmond@gmail.com', '214493', 'time reason', 'text', 'I can just have a conversation with myself.', NOW(), 5);
INSERT INTO contact_table
	(contact_name, contact_email, contact_phone, contact_reason, contact_method, contact_comments, contact_date, employee_id)
VALUES
	('Jaheim Knights', 'knights@gmail.com', '3453456', 'Jaheim reason', 'text', 'Oh wow that does fill in data.', NOW(), 1);
			
