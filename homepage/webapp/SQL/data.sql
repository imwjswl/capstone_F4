CREATE DATABASE IF NOT EXISTS student
DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE student;

CREATE Table Student(
	id int AUTO_INCREMENT, #학생인원수 카운팅
	name char(20), #이름
	grade int, #학년
	studentId char(30), #학번
	subject char(20), #과목
	schedulendDays int(100), #원래 정해진 수업일수
	attend int(50), #출석일
	timeAtEnter datetime, #학생이 강의실에 들어오는 시각
	primary key(id)
);

insert into Student values(NULL, '한민기', 4, '20203272', '국어', 0, 0, (now()));
insert into Student values(NULL, '백선영', 4, '20183889', '국어', 0, 0, (now()));
insert into Student values(NULL, '김채린', 4, '20203151', '국어', 0, 0, (now()));
insert into Student values(NULL, '전지원', 4, '20203185', '국어', 0, 0, (now()));


