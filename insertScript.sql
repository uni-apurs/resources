--INSERT SCRIPT

-- Select * from faculty
insert into faculty (name, address)
values('Fakultet Tehnickih Nauka','Novi Sad');
insert into faculty (name, address)
values('Prirodno-matematicki Fakultet','Novi Sad');
insert into faculty (name, address)
values('Elektrotehnicki Fakultet','Beograd');
insert into faculty (name, address)
values('Ekonomski Fakultet','Subotica');
insert into faculty (name, address)
values('Medicinski Fakultet','Novi Sad');

select * from faculty;

--Select * from classroom 
insert into classroom (fId, name)
values(1,'ITC-301');
insert into classroom (fId, name)
values(1,'A1');
insert into classroom (fId, name)
values(1,'205');
insert into classroom (fId, name)
values(1,'110');
insert into classroom (fId, name)
values(1,'AR4');

--Select * from department
insert into department (fId,name)
values(1,'Departman za Industrijsko Inzenjerstvo');
insert into department (fId,name)
values(1,'Departman za arhitekturu i urbanizam');
insert into department (fId,name)
values(1,'Departman za graficko inzenjrstvo i dizajn');
insert into department (fId,name)
values(1,'Departman za racunarstvo i automatiku');
insert into department (fId,name)
values(1,'Departman za saobracaj');

--Select * from syllabus
-- truncate table syllabus
insert into syllabus (name)
values('Inzenjerstvo Informacionih Sistema');
insert into syllabus (name)
values('Industrijsko inzenjerstvo');
insert into syllabus (name)
values('Softversko Inzenjerstvo');
insert into syllabus (name)
values('Racunarstvo i automatika');
insert into syllabus (name)
values('Primenjeno softversko inzenjerstvo');


--select * from depsyl
insert into depsyl (dId,sId)
values(1,1);
insert into depsyl (dId,sId)
values(4,4);
insert into depsyl (dId,sId)
values(1,2);
insert into depsyl (dId,sId)
values(4,3);
insert into depsyl (dId,sId)
values(4,5);

--select * from course
insert into course (name,year)
values('Razvoj viseslojnih aplikacija','2020/21');
insert into course (name,year)
values('Dizajnerski obrasci','2020/21');
insert into course (name,year)
values('Poslovni informacioni sistemi','2020/21');
insert into course (name,year)
values('Projektovanje baza podataka','2020/21');
insert into course (name,year)
values('Sistemi baza podataka','2020/21');

--select * from semester
insert into semester (sId,cId,number)
values(1,1,5);
insert into semester (sId,cId,number)
values(1,2,6);
insert into semester (sId,cId,number)
values(1,3,3);
insert into semester (sId,cId,number)
values(1,4,5);
insert into semester (sId,cId,number)
values(1,5,6);

--select * from student
insert into student (sId,firstName,lastName,indexNum)
values(1,'Milan','Vulin','IT80-2017');
insert into student (sId,firstName,lastName,indexNum)
values(1,'Stefan','Katic','IT55-2017');
insert into student (sId,firstName,lastName,indexNum)
values(4,'Bojan','Vujic','RA54-2017');
insert into student (sId,firstName,lastName,indexNum)
values(5,'Ivan','Gajic','E207-2017');
insert into student (sId,firstName,lastName,indexNum)
values(3,'Milan','Popdjurdjev','SIT23-2017');

--select * from attendance
insert into attendance (cId,sId)
values(2,1);
insert into attendance (cId,sId)
values(5,1);
insert into attendance (cId,sId)
values(1,2);
insert into attendance (cId,sId)
values(4,2);

--select * from professor
insert into professor (firstName,lastName)
values('Djordje','Przulj');
insert into professor (firstName,lastName)
values('Sonja','Ristic');
insert into professor (firstName,lastName)
values('Darko','Stefanovic');
insert into professor (firstName,lastName)
values('Srdjan','Sladojevic');
insert into professor (firstName,lastName)
values('Ugljesa','Marjanovic');

--select * from teaching
insert into teaching (cId,pId)
values(2,1);
insert into teaching (cId,pId)
values(1,1);
insert into teaching (cId,pId)
values(3,3);
insert into teaching (cId,pId)
values(4,2);
insert into teaching (cId,pId)
values(5,2);

--select * from place
insert into place (classroomId,courseId,lectureLab)
values(1,1,true);
insert into place (classroomId,courseId,lectureLab)
values(2,2,true);
insert into place (classroomId,courseId,lectureLab)
values(3,3,true);
insert into place (classroomId,courseId,lectureLab)
values(4,4,false);
insert into place (classroomId,courseId,lectureLab)
values(5,5,false);















