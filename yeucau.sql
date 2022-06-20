use quanlysinhvien1;
select * from students;
select * from subject;
select avg(markId) as 'diem trung binh' from marks;
select  s.studentId,s.studentName, m.markId
from marks m
left join students s on s.studentId = m.studentId 
order by markId desc;
alter table students
add status int not null ;
DELETE FROM students WHERE studentId = 1;


