select concat(firstname,' ',lastname) as 'Name',YearsExperience,IsTenured,Subject,Section
	from Instructor
	join Class 
		on instructor.id = class.InstructorId 
	order by Instructor.Lastname