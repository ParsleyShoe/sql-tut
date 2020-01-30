select s.id as 'Student ID', concat(s.firstname, ' ', s.lastname) as 'Name', m.Description as 'Major',
		ClassId as 'Course ID', concat(c.subject, ' ', c.section) as 'Subject',
		concat(i.firstname, ' ', i.lastname) as 'Teacher name'
	from Student s
	join StudentClassRel rel on s.id = rel.StudentId
	join major m on s.MajorId = m.id
	join Class c on rel.ClassId = c.Id
	join Instructor i on i.Id = c.InstructorId