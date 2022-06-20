create database quanlysinhvien1;
use quanlysinhvien1;
create table students (
studentId int auto_increment primary key,
studentName varchar(50) not null,
age int not null,
email varchar(50));

create table subject(
subjectId int auto_increment primary key,
subjectName varchar(50));

create table marks(
markId int,
subjectId int,
studentId int,
 foreign key (subjectId)references subject(subjectId),
foreign key (studentId)references students(studentId));
drop table marks;

create table class(
classId int auto_increment primary key,
className varchar(50));

create table classStudent(
studentId int ,
classId int,
foreign key(studentId)references students(studentId),
foreign key(classId)references class(classId));