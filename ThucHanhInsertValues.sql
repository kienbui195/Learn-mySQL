use quanlysinhvien;

create table class (
	classid int primary key auto_increment,
    classname varchar(20),
    startdate date,
    status bit default 1
);

create table student (
	studentid int primary key auto_increment,
    studentname varchar(20),
    address varchar(20),
    phone int,
    status bit default 1,
    classid int,
    foreign key (classid) references class(classid)
);

create table subject (
	subid int primary key auto_increment,
    subname varchar (20),
    credit int,
    status bit default 1
);

create table mark (
	markid int primary key auto_increment,
    subid int,
    studentid int,
    mark int(3),
	examtimes int,
    foreign key (subid) references subject(subid),
    foreign key (studentid) references student(studentid)
);

insert into class (classname, startdate, status)
values ('A1','2008-12-20', 1),('A2','2008-12-20', 1),('B3','2022-12-20', 0);

insert into student (studentname, address, phone, status, classid)
values ('Hung','Ha noi', 323423424, 1 , 1),
('Manh','HCM', 234546573, 0 , 2);

insert into student (studentname, address, status, classid)
values ('Hung','Ha noi', 1 , 1);

insert into subject (subname, credit, status)
values ('CF',5,1),('C',6,1),('HDJ',5,1),('RDBMS',10,1);

insert into mark (subid, studentid, mark, examtimes)
values (1,1,8,1),(1,2,10,2),(2,1,12,1);


