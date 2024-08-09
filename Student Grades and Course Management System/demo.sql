use Cheng_Yi

drop table student;       /*學生*/
drop table course;    /*必修*/
drop table major_course;  /*成績*/
drop table optional_course;  /*成績*/
drop table outer_course;  /*成績*/
drop table general_course;  /*成績*/
drop table core_course;  /*成績*/
drop table english_course;  /*成績*/
drop table pe_course;  /*成績*/
drop table topic_course;  /*成績*/
drop table military_course;  /*成績*/
drop table transcript;  /*成績單*/

/*學生*/
create table student(
	student_id varchar(11) primary key,
	student_name varchar(40) not null
);
/*課程*/
create table course(
	course_no varchar(7) primary key,
	course_name varchar(40) not null,
	category varchar(40),       /*類別*/
	academic_credit int,        /*學分*/

);

create table major_course(
	student_id varchar(11),
	category varchar(40),       /*類別*/
	school_year	 int,          /*學年*/
	semester int,              /*學期*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*學分*/
	score int,                  /*成績*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table optional_course(
	student_id varchar(11),
	category varchar(40),       /*類別*/
	school_year	 int,          /*學年*/
	semester int,              /*學期*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*學分*/
	score int,                  /*成績*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table core_course(
	student_id varchar(11),
	category varchar(40),       /*類別*/
	school_year	 int,          /*學年*/
	semester int,              /*學期*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*學分*/
	score int,                  /*成績*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table general_course(
	student_id varchar(11),
	category varchar(40),       /*類別*/
	school_year	 int,          /*學年*/
	semester int,              /*學期*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*學分*/
	score int,                  /*成績*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table pe_course(
	student_id varchar(11),
	category varchar(40),       /*類別*/
	school_year	 int,          /*學年*/
	semester int,              /*學期*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*學分*/
	score int,                  /*成績*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table english_course(
	student_id varchar(11),
	category varchar(40),       /*類別*/
	school_year	 int,          /*學年*/
	semester int,              /*學期*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*學分*/
	score int,                  /*成績*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table outer_course(
	student_id varchar(11),
	category varchar(40),       /*類別*/
	school_year	 int,          /*學年*/
	semester int,              /*學期*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*學分*/
	score int,                  /*成績*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table topic_course(
	student_id varchar(11),
	category varchar(40),       /*類別*/
	school_year	 int,          /*學年*/
	semester int,              /*學期*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*學分*/
	score int,                  /*成績*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);

create table military_course(
	student_id varchar(11),
	category varchar(40),       /*類別*/
	school_year	 int,          /*學年*/
	semester int,              /*學期*/
	course_no varchar(7),
	course_name varchar(40),
	academic_credit int,        /*學分*/
	score int,                  /*成績*/
	primary key (student_id,course_no),
	foreign key (student_id) references student(student_id),
	foreign key (course_no) references course(course_no)

);


/*成績單*/
create table transcript(
	student_id varchar(11),
	student_name varchar(40), 
	department varchar(40),         /*學系*/
	class varchar(40),         /*班級*/
	school_year	 int,               /*學年*/
	sum_academic_credit int,        /*總學分*/
	score_average int,              /*成績平均*/
	conduct_performance_average int,/*操行成績平均*/
	class_rank int,                 /*班排*/
	department_rank int,            /*系排*/
	primary key (student_id),
	foreign key (student_id) references student(student_id)
);

insert into student values ('b11001270','Billie Eillish');
insert into student values ('b11001234','Ariana Grande');
insert into student values ('b11001235','David Tao');

insert into major_course values ('b11001270','必修',110,1,'A00B00C','計算機程式',3,80);
insert into major_course values ('b11001234','必修',110,1,'A00B00C','計算機程式',3,100);
insert into major_course values ('b11001235','必修',110,1,'A00B00C','計算機程式',3,90);
insert into major_course values ('b11001270','必修',110,1,'A00B01C','資料結構',3,90);
insert into major_course values ('b11001234','必修',110,1,'A00B01C','資料結構',3,90);
insert into major_course values ('b11001235','必修',110,1,'A00B01C','資料結構',3,80);
insert into major_course values ('b11001270','必修',110,2,'A00B02C','邏輯電路',3,85);
insert into major_course values ('b11001234','必修',110,2,'A00B02C','邏輯電路',3,100);
insert into major_course values ('b11001235','必修',110,2,'A00B02C','邏輯電路',3,70);

insert into course values ('A00B00C','計算機程式','必修',3);
insert into course values ('A00B01C','資料結構','必修',3);
insert into course values ('A00B02C','邏輯電路','必修',3);

insert into course values ('A00B03C','資訊應用軟體','選修',3);
insert into course values ('A00B04C','機器人程式設計概論','選修',3);
insert into course values ('A00B05C','多媒體','選修',3);

insert into optional_course values ('b11001270','選修',110,1,'A00B03C','資訊應用軟體',3,98);
insert into optional_course values ('b11001234','選修',110,1,'A00B03C','資訊應用軟體',3,78);
insert into optional_course values ('b11001235','選修',110,1,'A00B03C','資訊應用軟體',3,97);
insert into optional_course values ('b11001270','選修',110,1,'A00B04C','機器人程式設計概論',3,75);
insert into optional_course values ('b11001234','選修',110,1,'A00B04C','機器人程式設計概論',3,75);
insert into optional_course values ('b11001235','選修',110,1,'A00B04C','機器人程式設計概論',3,75);
insert into optional_course values ('b11001270','選修',110,2,'A00B05C','多媒體',3,60);
insert into optional_course values ('b11001234','選修',110,2,'A00B05C','多媒體',3,70);
insert into optional_course values ('b11001235','選修',110,2,'A00B05C','多媒體',3,36);
select * from optional_course;

insert into course values ('A00B06C','科學探究:生活中的數學','核心通識',2);
insert into course values ('A00B07C','自我探索:管理導論','核心通識',2);

insert into core_course values ('b11001270','核心通識',110,2,'A00B06C','科學探究:生活中的數學',2,64);
insert into core_course values ('b11001234','核心通識',110,2,'A00B06C','科學探究:生活中的數學',2,60);
insert into core_course values ('b11001235','核心通識',110,2,'A00B06C','科學探究:生活中的數學',2,96);
insert into core_course values ('b11001270','核心通識',110,1,'A00B07C','自我探索:管理導論',2,100);
insert into core_course values ('b11001234','核心通識',110,1,'A00B07C','自我探索:管理導論',2,98);
insert into core_course values ('b11001235','核心通識',110,1,'A00B07C','自我探索:管理導論',2,96);

insert into course values ('A00B08C','生醫衛保:環境安全衛生','多元通識',2);
insert into course values ('A00B09C','科學探究:認識太陽系','多元通識',2);

insert into general_course values ('b11001270','多元通識',110,1,'A00B08C','生醫衛保:環境安全衛生',2,84);
insert into general_course values ('b11001234','多元通識',110,1,'A00B08C','生醫衛保:環境安全衛生',2,77);
insert into general_course values ('b11001235','多元通識',110,1,'A00B08C','生醫衛保:環境安全衛生',2,86);
insert into general_course values ('b11001270','多元通識',110,2,'A00B09C','科學探究:認識太陽系',2,66);
insert into general_course values ('b11001234','多元通識',110,2,'A00B09C','科學探究:認識太陽系',2,70);
insert into general_course values ('b11001235','多元通識',110,2,'A00B09C','科學探究:認識太陽系',2,80);

insert into course values ('A00B10C','體育','體育',0);

insert into pe_course values ('b11001270','體育',110,1,'A00B10C','體育',0,99);
insert into pe_course values ('b11001234','體育',110,1,'A00B10C','體育',0,88);
insert into pe_course values ('b11001235','體育',110,1,'A00B10C','體育',0,95);

insert into course values ('A00B11C','英文','英文',2);

insert into english_course values ('b11001270','英文',110,2,'A00B11C','英文',0,99);
insert into english_course values ('b11001234','英文',110,2,'A00B11C','英文',0,88);
insert into english_course values ('b11001235','英文',110,2,'A00B11C','英文',0,95);

insert into course values ('A00B12C','自我領導力','外系',2);

insert into outer_course values ('b11001270','外系',110,1,'A00B12C','自我領導力',2,60);
insert into outer_course values ('b11001234','外系',110,1,'A00B12C','自我領導力',2,58);
insert into outer_course values ('b11001235','外系',110,1,'A00B12C','自我領導力',2,67);


insert into course values ('A00B13C','專題(一)','專題',1);
insert into course values ('A00B14C','專題(二)','專題',1);

insert into topic_course values ('b11001270','專題',110,2,'A00B13C','專題(一)',1,84);
insert into topic_course values ('b11001234','專題',110,2,'A00B13C','專題(一)',1,38);
insert into topic_course values ('b11001235','專題',110,2,'A00B13C','專題(一)',1,67);
insert into topic_course values ('b11001270','專題',110,3,'A00B14C','專題(二)',1,60);
insert into topic_course values ('b11001234','專題',110,3,'A00B14C','專題(二)',1,80);
insert into topic_course values ('b11001235','專題',110,3,'A00B14C','專題(二)',1,90);

insert into course values ('A00B15C','軍訓','軍訓',0);

insert into military_course values ('b11001270','軍訓',110,1,'A00B15C','軍訓',0,67);
insert into military_course values ('b11001234','軍訓',110,1,'A00B15C','軍訓',0,85);
insert into military_course values ('b11001235','軍訓',110,1,'A00B15C','軍訓',0,74);


insert into transcript values ('b11001270','Billie Eillish','資訊工程學系','class A',110,30,76,85,3,3);
insert into transcript values ('b11001234','Ariana Grande','資訊工程學系','class A',110,30,86,85,1,1);
insert into transcript values ('b11001235','David Tao','資訊工程學系','class A',110,30,81,85,2,2);

select * from student;       /*學生*/
select * from course;    /*必修*/
select * from  major_course;  /*成績*/
select * from optional_course;  /*成績*/
select * from outer_course;  /*成績*/
select * from general_course;  /*成績*/
select * from core_course;  /*成績*/
select * from english_course;  /*成績*/
select * from pe_course;  /*成績*/
select * from topic_course;  /*成績*/
select * from military_course;  /*成績*/
select * from transcript;  /*成績單*/


/*select grade.school_year,grade.semester, grade.course_no,course.category, course.course_name,course.academic_credit, grade.score from grade,course where course.course_no = grade.course_no and student_id='b10901270'and category='必修' order by school_year, semester,category;

/*統計學分數*/
select sum(course.academic_credit) as grade_n from grade,course where course.course_no = grade.course_no and grade.student_id='b11001270';
select sum(course.academic_credit) as grade_n from grade,course where course.course_no = grade.course_no and grade.student_id='b11001234';
select sum(course.academic_credit) as grade_n from grade,course where course.course_no = grade.course_no and grade.student_id='b11001235';


/*統計學年平均*/
select avg(grade.score) as grade_n from grade where grade.student_id='b11001270' and grade.school_year = '110';
select avg(grade.score) as grade_n from grade where grade.student_id='b11001234' and grade.school_year = '110';
select avg(grade.score) as grade_n from grade where grade.student_id='b11001235' and grade.school_year = '110';*/




