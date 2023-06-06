CREATE DATABASE IF NOT EXISTS stud
DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE stud;

CREATE TABLE student(
	id int,
	name char(32),
	s_number char(32),
	Attendance int
);

insert into student values(1, "한민기", "20203272", 0);
insert into student values(2, "백선영", "20183389", 0);
insert into student values(3, "김채린", "20203151", 0);
insert into student values(4, "전지원", "20203185", 0);
