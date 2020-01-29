--select * from student
--where gpa < 3.0
--order by sat desc;

select concat(firstname,' ',lastname),sat,gpa,isnull(description,'undecided') as 'major',isnull(minsat,'') from student left join major on major.id = student.majorid