DROP TABLE IF EXISTS teaching CASCADE;
DROP TABLE IF EXISTS professor CASCADE;
DROP TABLE IF EXISTS place CASCADE;
DROP TABLE IF EXISTS classroom CASCADE;
DROP TABLE IF EXISTS semester CASCADE;
DROP TABLE IF EXISTS attendance CASCADE;
DROP TABLE IF EXISTS course CASCADE;
DROP TABLE IF EXISTS student CASCADE;
DROP TABLE IF EXISTS depsyl CASCADE;
DROP TABLE IF EXISTS syllabus CASCADE;
DROP TABLE IF EXISTS department CASCADE;
DROP TABLE IF EXISTS faculty CASCADE;

CREATE TABLE faculty (
	id serial primary key,
	name varchar(40) not null,
	address varchar(100) not null
);

CREATE TABLE department (
	id serial primary key,
	name varchar(100) not null,
	fId int not null,
	constraint fk_faculty foreign key (fId) references faculty(id)
);

CREATE TABLE syllabus (
	id serial primary key,
	name varchar(100) not null
);

CREATE TABLE depsyl (
	id serial primary key,
	dId int not null,
	sId int not null,
	constraint fk_department foreign key (dId) references department(id),
	constraint fk_syllabus foreign key (sId) references syllabus(id)
);

CREATE TABLE student (
	id serial primary key,
	firstName varchar(40) not null,
	lastName varchar(100) not null,
	indexNum varchar(10) not null,
	sId int not null,
	constraint fk_syllabus foreign key (sId) references syllabus(id)
);

CREATE TABLE course (
	id serial primary key,
	name varchar(100) not null,
	year varchar(10) not null
);

CREATE TABLE attendance (
	id serial primary key,
	cId int not null,
	sId int not null,
	constraint fk_course foreign key (cId) references course(id),
	constraint fk_student foreign key (sId) references student(id)
);

CREATE TABLE semester (
	id serial primary key,
	number int not null,
	sId int not null,
	cId int not null,
	constraint fk_syllabus foreign key (sId) references syllabus(id),
	constraint fk_course foreign key (cId) references course(id)
);

CREATE TABLE classroom (
	id serial primary key,
	name varchar(10) not null,
	fId int not null,
	constraint fk_faculty foreign key (fId) references faculty(id)
);

CREATE TABLE place (
	id serial primary key,
	lectureLab boolean not null,
	classroomId int not null,
	courseId int not null,
	constraint fk_classroom foreign key (classroomId) references classroom(id),
	constraint fk_course foreign key (courseId) references course(id)
);

CREATE TABLE professor (
	id serial primary key,
	firstName varchar(40) not null,
	lastName varchar(100) not null
);

CREATE TABLE teaching (
	id serial primary key,
	cId int not null,
	pId int not null,
	constraint fk_course foreign key (cId) references course(id),
	constraint fk_professor foreign key (pId) references professor(id)
);