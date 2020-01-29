--SELECT * FROM Instructor JOIN Class ON Instructor.ID = Class.InstructorId;


select CLASS.ID AS 'Course ID #',concat(Subject, ' ',Section) as 'Course name',concat(firstname,' ',lastname) as 'Teacher Name',YearsExperience as 'Exp.'
	from Instructor
	join Class
		on INSTRUCTOR.id = CLASS.InstructorId 
		where IsTenured = 1
	order by Lastname;

--select * from Instructor