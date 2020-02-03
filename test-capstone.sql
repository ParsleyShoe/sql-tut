--USERS TABLE WITH PK id int // both T; both F; admin T, reviewer F

/*
CREATE TABLE users (
	id INT PRIMARY KEY IDENTITY(1, 1),
	username NVARCHAR(30) NOT NULL, --must be UNIQUE
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

SELECT * FROM users;