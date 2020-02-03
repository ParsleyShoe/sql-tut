/*
INSERT INTO students (firstname, lastname, birthday)
	VALUES ('Jonathan', 'Cracker', 4/15/19);
INSERT INTO students (firstname, lastname, birthday, loan)
	VALUES ('James', 'Cameron', 8/16/54, 54000.00);
INSERT INTO students (firstname, lastname, birthday)
	VALUES ('Bryce', 'Howard', 3/2/81);
INSERT INTO students (firstname, lastname, birthday, loan)
	VALUES ('Fred', 'Flintstone', 6/19/43, 17542.18);
INSERT INTO students (firstname, lastname, birthday)
	VALUES ('Parker', 'Winters', 4/7/1907);

UPDATE students
	SET active = 0
	WHERE id in (2,3,4);
	*/

SELECT * FROM students;