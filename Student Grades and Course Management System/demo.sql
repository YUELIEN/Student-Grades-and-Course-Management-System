use Cheng_Yi

drop table student;       /*�ǥ�*/
drop table course;    /*����*/
drop table major_course;  /*���Z*/
drop table optional_course;  /*���Z*/
drop table outer_course;  /*���Z*/
drop table general_course;  /*���Z*/
drop table core_course;  /*���Z*/
drop table english_course;  /*���Z*/
drop table pe_course;  /*���Z*/
drop table topic_course;  /*���Z*/
drop table military_course;  /*���Z*/
drop table transcript;  /*���Z��*/

/*�ǥ�*/
create table student(
	student_id varchar(11) primary key,
	student_name varchar(40) not null
);
/*�ҵ{*/
create table course(
	course_no varchar(7) primary key,
	course_name varchar(40) not null,
	category varchar(40),       /*���O*/
	academic_credit int,        /*�Ǥ�*/

);

create table major_course(
	student_id varchar(11),
	category varchar(40),       /*���O*/
	school_year	 int,          /*�Ǧ~*/
	semester int,              /*�Ǵ�*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*�Ǥ�*/
	score int,                  /*���Z*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table optional_course(
	student_id varchar(11),
	category varchar(40),       /*���O*/
	school_year	 int,          /*�Ǧ~*/
	semester int,              /*�Ǵ�*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*�Ǥ�*/
	score int,                  /*���Z*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table core_course(
	student_id varchar(11),
	category varchar(40),       /*���O*/
	school_year	 int,          /*�Ǧ~*/
	semester int,              /*�Ǵ�*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*�Ǥ�*/
	score int,                  /*���Z*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table general_course(
	student_id varchar(11),
	category varchar(40),       /*���O*/
	school_year	 int,          /*�Ǧ~*/
	semester int,              /*�Ǵ�*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*�Ǥ�*/
	score int,                  /*���Z*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table pe_course(
	student_id varchar(11),
	category varchar(40),       /*���O*/
	school_year	 int,          /*�Ǧ~*/
	semester int,              /*�Ǵ�*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*�Ǥ�*/
	score int,                  /*���Z*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table english_course(
	student_id varchar(11),
	category varchar(40),       /*���O*/
	school_year	 int,          /*�Ǧ~*/
	semester int,              /*�Ǵ�*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*�Ǥ�*/
	score int,                  /*���Z*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table outer_course(
	student_id varchar(11),
	category varchar(40),       /*���O*/
	school_year	 int,          /*�Ǧ~*/
	semester int,              /*�Ǵ�*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*�Ǥ�*/
	score int,                  /*���Z*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table topic_course(
	student_id varchar(11),
	category varchar(40),       /*���O*/
	school_year	 int,          /*�Ǧ~*/
	semester int,              /*�Ǵ�*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*�Ǥ�*/
	score int,                  /*���Z*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table military_course(
	student_id varchar(11),
	category varchar(40),       /*���O*/
	school_year	 int,          /*�Ǧ~*/
	semester int,              /*�Ǵ�*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*�Ǥ�*/
	score int,                  /*���Z*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);


/*���Z��*/
create table transcript(
	student_id varchar(11),
	student_name varchar(40), 
	department varchar(40),         /*�Ǩt*/
	class varchar(40),         /*�Z��*/
	school_year	 int,               /*�Ǧ~*/
	sum_academic_credit int,        /*�`�Ǥ�*/
	score_average int,              /*���Z����*/
	conduct_performance_average int,/*�ަ榨�Z����*/
	class_rank int,                 /*�Z��*/
	department_rank int,            /*�t��*/
	primary key (student_id),
	foreign key (student_id) references student(student_id)
);

insert into student values ('b11001270','Billie Eillish');
insert into student values ('b11001234','Ariana Grande');
insert into student values ('b11001235','David Tao');

insert into major_course values ('b11001270','����',110,1,'A00B00C','�p����{��',3,80);
insert into major_course values ('b11001234','����',110,1,'A00B00C','�p����{��',3,100);
insert into major_course values ('b11001235','����',110,1,'A00B00C','�p����{��',3,90);
insert into major_course values ('b11001270','����',110,1,'A00B01C','��Ƶ��c',3,90);
insert into major_course values ('b11001234','����',110,1,'A00B01C','��Ƶ��c',3,90);
insert into major_course values ('b11001235','����',110,1,'A00B01C','��Ƶ��c',3,80);
insert into major_course values ('b11001270','����',110,2,'A00B02C','�޿�q��',3,85);
insert into major_course values ('b11001234','����',110,2,'A00B02C','�޿�q��',3,100);
insert into major_course values ('b11001235','����',110,2,'A00B02C','�޿�q��',3,70);

insert into course values ('A00B00C','�p����{��','����',3);
insert into course values ('A00B01C','��Ƶ��c','����',3);
insert into course values ('A00B02C','�޿�q��','����',3);

insert into course values ('A00B03C','��T���γn��','���',3);
insert into course values ('A00B04C','�����H�{���]�p����','���',3);
insert into course values ('A00B05C','�h�C��','���',3);

insert into optional_course values ('b11001270','���',110,1,'A00B03C','��T���γn��',3,98);
insert into optional_course values ('b11001234','���',110,1,'A00B03C','��T���γn��',3,78);
insert into optional_course values ('b11001235','���',110,1,'A00B03C','��T���γn��',3,97);
insert into optional_course values ('b11001270','���',110,1,'A00B04C','�����H�{���]�p����',3,75);
insert into optional_course values ('b11001234','���',110,1,'A00B04C','�����H�{���]�p����',3,75);
insert into optional_course values ('b11001235','���',110,1,'A00B04C','�����H�{���]�p����',3,75);
insert into optional_course values ('b11001270','���',110,2,'A00B05C','�h�C��',3,60);
insert into optional_course values ('b11001234','���',110,2,'A00B05C','�h�C��',3,70);
insert into optional_course values ('b11001235','���',110,2,'A00B05C','�h�C��',3,36);
select * from optional_course;

insert into course values ('A00B06C','��Ǳ��s:�ͬ������ƾ�','�֤߳q��',2);
insert into course values ('A00B07C','�ۧڱ���:�޲z�ɽ�','�֤߳q��',2);

insert into core_course values ('b11001270','�֤߳q��',110,2,'A00B06C','��Ǳ��s:�ͬ������ƾ�',2,64);
insert into core_course values ('b11001234','�֤߳q��',110,2,'A00B06C','��Ǳ��s:�ͬ������ƾ�',2,60);
insert into core_course values ('b11001235','�֤߳q��',110,2,'A00B06C','��Ǳ��s:�ͬ������ƾ�',2,96);
insert into core_course values ('b11001270','�֤߳q��',110,1,'A00B07C','�ۧڱ���:�޲z�ɽ�',2,100);
insert into core_course values ('b11001234','�֤߳q��',110,1,'A00B07C','�ۧڱ���:�޲z�ɽ�',2,98);
insert into core_course values ('b11001235','�֤߳q��',110,1,'A00B07C','�ۧڱ���:�޲z�ɽ�',2,96);

insert into course values ('A00B08C','����ëO:���Ҧw���å�','�h���q��',2);
insert into course values ('A00B09C','��Ǳ��s:�{�ѤӶ��t','�h���q��',2);

insert into general_course values ('b11001270','�h���q��',110,1,'A00B08C','����ëO:���Ҧw���å�',2,84);
insert into general_course values ('b11001234','�h���q��',110,1,'A00B08C','����ëO:���Ҧw���å�',2,77);
insert into general_course values ('b11001235','�h���q��',110,1,'A00B08C','����ëO:���Ҧw���å�',2,86);
insert into general_course values ('b11001270','�h���q��',110,2,'A00B09C','��Ǳ��s:�{�ѤӶ��t',2,66);
insert into general_course values ('b11001234','�h���q��',110,2,'A00B09C','��Ǳ��s:�{�ѤӶ��t',2,70);
insert into general_course values ('b11001235','�h���q��',110,2,'A00B09C','��Ǳ��s:�{�ѤӶ��t',2,80);

insert into course values ('A00B10C','��|','��|',0);

insert into pe_course values ('b11001270','��|',110,1,'A00B10C','��|',0,99);
insert into pe_course values ('b11001234','��|',110,1,'A00B10C','��|',0,88);
insert into pe_course values ('b11001235','��|',110,1,'A00B10C','��|',0,95);

insert into course values ('A00B11C','�^��','�^��',2);

insert into english_course values ('b11001270','�^��',110,2,'A00B11C','�^��',0,99);
insert into english_course values ('b11001234','�^��',110,2,'A00B11C','�^��',0,88);
insert into english_course values ('b11001235','�^��',110,2,'A00B11C','�^��',0,95);

insert into course values ('A00B12C','�ۧڻ�ɤO','�~�t',2);

insert into outer_course values ('b11001270','�~�t',110,1,'A00B12C','�ۧڻ�ɤO',2,60);
insert into outer_course values ('b11001234','�~�t',110,1,'A00B12C','�ۧڻ�ɤO',2,58);
insert into outer_course values ('b11001235','�~�t',110,1,'A00B12C','�ۧڻ�ɤO',2,67);


insert into course values ('A00B13C','�M�D(�@)','�M�D',1);
insert into course values ('A00B14C','�M�D(�G)','�M�D',1);

insert into topic_course values ('b11001270','�M�D',110,2,'A00B13C','�M�D(�@)',1,84);
insert into topic_course values ('b11001234','�M�D',110,2,'A00B13C','�M�D(�@)',1,38);
insert into topic_course values ('b11001235','�M�D',110,2,'A00B13C','�M�D(�@)',1,67);
insert into topic_course values ('b11001270','�M�D',110,3,'A00B14C','�M�D(�G)',1,60);
insert into topic_course values ('b11001234','�M�D',110,3,'A00B14C','�M�D(�G)',1,80);
insert into topic_course values ('b11001235','�M�D',110,3,'A00B14C','�M�D(�G)',1,90);

insert into course values ('A00B15C','�x�V','�x�V',0);

insert into military_course values ('b11001270','�x�V',110,1,'A00B15C','�x�V',0,67);
insert into military_course values ('b11001234','�x�V',110,1,'A00B15C','�x�V',0,85);
insert into military_course values ('b11001235','�x�V',110,1,'A00B15C','�x�V',0,74);


insert into transcript values ('b11001270','Billie Eillish','��T�u�{�Ǩt','class A',110,30,76,85,3,3);
insert into transcript values ('b11001234','Ariana Grande','��T�u�{�Ǩt','class A',110,30,86,85,1,1);
insert into transcript values ('b11001235','David Tao','��T�u�{�Ǩt','class A',110,30,81,85,2,2);

select * from student;       /*�ǥ�*/
select * from course;    /*����*/
select * from  major_course;  /*���Z*/
select * from optional_course;  /*���Z*/
select * from outer_course;  /*���Z*/
select * from general_course;  /*���Z*/
select * from core_course;  /*���Z*/
select * from english_course;  /*���Z*/
select * from pe_course;  /*���Z*/
select * from topic_course;  /*���Z*/
select * from military_course;  /*���Z*/
select * from transcript;  /*���Z��*/


/*select grade.school_year,grade.semester, grade.course_no,course.category, course.course_name,course.academic_credit, grade.score from grade,course where course.course_no = grade.course_no and student_id='b10901270'and category='����' order by school_year, semester,category;

/*�έp�Ǥ���*/
select sum(course.academic_credit) as grade_n from grade,course where course.course_no = grade.course_no and grade.student_id='b11001270';
select sum(course.academic_credit) as grade_n from grade,course where course.course_no = grade.course_no and grade.student_id='b11001234';
select sum(course.academic_credit) as grade_n from grade,course where course.course_no = grade.course_no and grade.student_id='b11001235';


/*�έp�Ǧ~����*/
select avg(grade.score) as grade_n from grade where grade.student_id='b11001270' and grade.school_year = '110';
select avg(grade.score) as grade_n from grade where grade.student_id='b11001234' and grade.school_year = '110';
select avg(grade.score) as grade_n from grade where grade.student_id='b11001235' and grade.school_year = '110';*/




