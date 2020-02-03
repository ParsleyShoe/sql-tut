--USERS TABLE WITH PK id int // both T; both F; admin T, reviewer F

/*
CREATE TABLE users (
	id INT PRIMARY KEY IDENTITY(1, 1),
	username NVARCHAR(30) NOT NULL UNIQUE,
	password1 NVARCHAR(30) NOT NULL,
	firstname NVARCHAR(30) NOT NULL,
	lastname NVARCHAR(30) NOT NULL,
	phone NVARCHAR(12),
	email NVARCHAR(100),
	isadmin BIT NOT NULL DEFAULT 0,
	isreviewer BIT NOT NULL DEFAULT 0
);
GO
INSERT INTO users (username, password1, firstname, lastname, phone, email, isadmin, isreviewer)
	VALUES ('parsleydude', '951620!@#$FDSA', 'Parsley', 'Wanderer', '513-594-9831', 'wanderparsley@gmail.com', 1, 1);
INSERT INTO users (username, password1, firstname, lastname, phone, email, isadmin)
	VALUES ('pinkpanther', '1@3$5^7*hIufeD', 'Jacques', 'Cousteau', '313-456-2837', 'pinkpanther@yahoo.com', 1);
INSERT INTO users (username, password1, firstname, lastname, phone, email)
	VALUES ('camel_bob21', 'password1234', 'Robert', 'Dreyfuss', '787-235-1948', 'bobthecamel@aol.com');
*/
/*
CREATE TABLE vendors (
	id INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	code NVARCHAR(30) NOT NULL UNIQUE,
	name NVARCHAR(30) NOT NULL,
	address NVARCHAR(30) NOT NULL,
	city NVARCHAR(30) NOT NULL,
	state NVARCHAR(2) NOT NULL,
	zip NVARCHAR(5) NOT NULL,
	phone NVARCHAR(12),
	email NVARCHAR(100)
);
GO
INSERT INTO vendors (code, name, address, city, state, zip, phone, email)
	VALUES ('1234', 'Skyline Chili', '2511 E Sharon Rd', 'Cincinnati', 'OH', '45246', '513-671-4444', 'info@skylinechili.com');
INSERT INTO vendors (code, name, address, city, state, zip, phone, email)
	VALUES ('1254', 'Kroger', '2710 W Broadway', 'Louisville', 'KY', '40211', '800-576-4377', 'info@kroger.com');
INSERT INTO vendors (code, name, address, city, state, zip, phone, email)
	VALUES ('1982', 'Central Tool Rental', '9666 Reading Rd', 'Cincinnati', 'OH', '45215', '513-733-2020', 'info@centraltoolrental.com');
INSERT INTO vendors (code, name, address, city, state, zip, phone, email)
	VALUES ('3728', 'Fuddruckers', '1500 Branding Ln', 'Downers Grove North', 'IL', '60515', '630-963-0404', 'info@fuddruckers.com');
INSERT INTO vendors (code, name, address, city, state, zip, phone, email)
	VALUES ('1231', 'Publix', '55 Ava Way', 'Saint Augustine', 'FL', '32084', '904-827-1392', 'info@publix.com');
*/
/*
CREATE TABLE products (
	id INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	partnumber NVARCHAR(30) NOT NULL UNIQUE,
	name NVARCHAR(30) NOT NULL,
	price DECIMAL(11, 2) NOT NULL,
	unit NVARCHAR(30) NOT NULL,
	photopath NVARCHAR(100),
	vendorid INT NOT NULL FOREIGN KEY REFERENCES vendors(id)
);
GO

INSERT INTO products (partnumber, name, price, unit, vendorid)
	VALUES ('1873', 'Eggs', 0.99, '12', '2');
INSERT INTO products (partnumber, name, price, unit, vendorid)
	VALUES ('1975', 'Chainsaw', 59.99, '1', '3');
INSERT INTO products (partnumber, name, price, unit, vendorid)
	VALUES ('4739', 'Chili concentrate', 14.45, '1', '1');
INSERT INTO products (partnumber, name, price, unit, vendorid)
	VALUES ('2534', 'Lettuce', 3.09, '1', '4');
INSERT INTO products (partnumber, name, price, unit, vendorid)
	VALUES ('9901', 'Green dolly', 27.98, '1', '5');
*/
/*
CREATE TABLE requests (
	id INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	description NVARCHAR(80) NOT NULL,
	justification NVARCHAR(80) NOT NULL,
	rejectionreasoning NVARCHAR(80),
	deliverymode NVARCHAR(20) NOT NULL DEFAULT 'Pickup',
	status NVARCHAR(10) NOT NULL DEFAULT 'NEW',
	total DECIMAL(11, 2) NOT NULL DEFAULT 0,
	userid INT NOT NULL FOREIGN KEY REFERENCES users(id)
);
GO

CREATE TABLE requestlines (
	id INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	requestid INT NOT NULL,
	productid INT NOT NULL,
	quantity INT NOT NULL DEFAULT 1
);
GO
*/


SELECT * FROM products;