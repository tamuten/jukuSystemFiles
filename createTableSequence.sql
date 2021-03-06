DROP TABLE IF EXISTS lesson CASCADE;
CREATE TABLE lesson (
	id varchar(8) primary key,
	name varchar(60) not null,
	alias varchar(60),
	time integer not null
);

DROP TABLE IF EXISTS student CASCADE;
CREATE TABLE student (
	id varchar(8) primary key,
	name varchar(61) not null,
	kana varchar(61) not null,
	gender varchar(10),
	grade integer not null,
	birthday date,
	school varchar(60),
	parents_name varchar(60),
	mail_address varchar(60),
	phone_number varchar(12),
	zipcode varchar(7),
	address varchar(60),
	course varchar(8) not null,
	registered_datetime timestamp,
	update_datetime timestamp,
	delete_flg boolean not null
);

DROP TABLE IF EXISTS course CASCADE;
CREATE TABLE course (
	id varchar(8) primary key,
	name varchar(60) not null,
	classTimes integer not null
);

DROP TABLE IF EXISTS grade CASCADE;
CREATE TABLE grade (
	id smallint primary key,
	name varchar(6) not null
);

DROP TABLE IF EXISTS m_timed CASCADE;
CREATE TABLE m_timed (
	id smallint primary key,
	name varchar(4) not null,
	start_time time,
	end_time time,
	use_flag boolean not null
);

DROP TABLE IF EXISTS m_timetable CASCADE;
CREATE TABLE m_timetable (
	timed_id smallint primary key,
	monday boolean not null,
	tuesday boolean not null,
	wednesday boolean not null,
	thursday boolean not null,
	friday boolean not null,
	saturday boolean not null,
	sunday boolean not null
);

DROP TABLE IF EXISTS class_schedule CASCADE;
CREATE TABLE class_schedule (
	id varchar(8) primary key,
	yearMonth varchar(7) not null,
	day_id integer not null,
	date date not null unique,
	delete_flg boolean not null
);

DROP TABLE IF EXISTS class_detail CASCADE;
CREATE TABLE class_detail (
	id serial primary key,
	date date not null,
	student_id varchar(8) not null,
	subject_id varchar(4),
	timed_id integer,
	teacher_id varchar(8),
	student_class_id integer,
	report varchar(500),
	delete_flg boolean not null
);

DROP TABLE IF EXISTS teacher CASCADE;
CREATE TABLE teacher (
	id varchar(8) primary key,
	name varchar(61) not null,
	kana varchar(61) not null,
	gender varchar(10),
	birthday date,
	university varchar(60),
	undergraduate varchar(60),
	department varchar(60),
	grade integer,
	phone_number varchar(12),
	mail_address varchar(60),
	zipcode varchar(7),
	address varchar(60),
	note varchar(200),
	delete_flg boolean not null,
	registered_datetime timestamp,
	update_datetime timestamp,
	delete_datetime timestamp
);

DROP TABLE IF EXISTS m_subject CASCADE;
CREATE TABLE m_subject (
	id varchar(4) primary key,
	name varchar(20) not null
);

DROP TABLE IF EXISTS teacher_subject CASCADE;
CREATE TABLE teacher_subject (
	teacher_id varchar(8) REFERENCES teacher(id),
	subject_id varchar(4) REFERENCES m_subject(id),
	PRIMARY KEY(teacher_id, subject_id)
);

DROP TABLE IF EXISTS student_class CASCADE;
CREATE TABLE student_class (
	id serial primary key
	,student_id varchar(8)
	,subject_id varchar(4)
	,day_id integer
	,timed_id integer
	,teacher_id varchar(8)
	,UNIQUE ( student_id, subject_id )
);

DROP TABLE IF EXISTS m_employee CASCADE;
CREATE TABLE m_employee (
	id varchar(8) primary key
	,name varchar(60) not null
	,birthday date 
	,role varchar(50)
	,password varchar(60)
);

DROP TABLE IF EXISTS attend_leave CASCADE;
CREATE TABLE attend_leave (
	id serial primary key
	,student_id varchar(8) not null REFERENCES student(id)
	,date date not null
	,attend_datetime timestamp
	,leave_datetime timestamp
);

DROP SEQUENCE IF EXISTS lesson_id_seq CASCADE;
CREATE SEQUENCE lesson_id_seq
    INCREMENT BY 1
    MAXVALUE 99999999
    START WITH 5
    NO CYCLE
;

DROP SEQUENCE IF EXISTS student_id_seq CASCADE;
CREATE SEQUENCE student_id_seq
	INCREMENT BY 1
	MAXVALUE 99999999
	START WITH 1
	NO CYCLE
;

DROP SEQUENCE IF EXISTS classDetail_id_seq CASCADE;
CREATE SEQUENCE classDetail_id_seq
	INCREMENT BY 1
	MAXVALUE 99999999
	START WITH 1
	NO CYCLE
;

DROP SEQUENCE IF EXISTS classSchedule_id_seq CASCADE;
CREATE SEQUENCE classSchedule_id_seq
	INCREMENT BY 1
	MAXVALUE 99999999
	START WITH 1
	NO CYCLE
;

DROP SEQUENCE IF EXISTS teacher_id_seq CASCADE;
CREATE SEQUENCE teacher_id_seq
	INCREMENT BY 1
	MAXVALUE 99999999
	START WITH 1
	NO CYCLE
;

DROP SEQUENCE IF EXISTS mEmployee_id_seq CASCADE;
CREATE SEQUENCE mEmployee_id_seq
	INCREMENT BY 1
	MAXVALUE 99999999
	START WITH 1
	NO CYCLE
;

DROP SEQUENCE IF EXISTS student_class_id_seq CASCADE;
CREATE SEQUENCE student_class_id_seq
	INCREMENT BY 1
	MAXVALUE 99999999
	START WITH 1
	NO CYCLE
;