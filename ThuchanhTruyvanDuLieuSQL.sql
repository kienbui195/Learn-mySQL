select * from student;

select * from student
where status = 1;

select * from subject
where credit < 10;

select s.studentid, s.studentname, c.classname
from student s join class c on s.classid = c.classid;

select s.studentid, s.studentname, c.classname
from student s join class c on s.classid = c.classid
where c.classname = 'A1';

select s.studentid, s.studentname, sub.subname, m.mark
from student s join mark m on s.studentid = m.studentid join subject sub on m.subid = sub.subid;

