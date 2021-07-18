DROP TABLE IF EXISTS lesson;
CREATE TABLE lesson (
	id varchar(8) primary key,
	name varchar(60) not null,
	alias varchar(60),
	time integer not null
);

DROP TABLE IF EXISTS student;
CREATE TABLE student (
	id varchar(8) primary key,
	name varchar(60) not null,
	kana varchar(60) not null,
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

DROP TABLE IF EXISTS course;
CREATE TABLE course (
	id varchar(8) primary key,
	name varchar(60) not null,
	classTimes integer not null
);

DROP TABLE IF EXISTS grade;
CREATE TABLE grade (
	id smallint primary key,
	name varchar(6) not null
);

DROP TABLE IF EXISTS m_timed;
CREATE TABLE m_timed (
	id smallint primary key,
	name varchar(4) not null,
	start_time time,
	end_time time,
	use_flag boolean not null
);

DROP TABLE IF EXISTS m_timetable;
CREATE TABLE m_timetable (
	day varchar(2),
	timed_id smallint,
	opening_flg boolean not null,
	primary key(day, timed_id)
);

DROP TABLE IF EXISTS class_schedule;
CREATE TABLE class_schedule (
	id varchar(8) primary key,
	date date not null,
	timed_id smallint not null,
	teacher_id varchar(8) not null,
	delete_flg boolean not null
);

DROP TABLE IF EXISTS class_detail;
CREATE TABLE class_detail (
	id varchar(8) primary key,
	class_schedule_id varchar(8) not null,
	student_id varchar(8) not null,
	subject_id varchar(4) not null,
	seat_id varchar(4) not null,
	delete_flg boolean not null
);

DROP TABLE IF EXISTS teacher;
CREATE TABLE teacher (
	id varchar(8) primary key,
	name varchar(30) not null,
	kana varchar(60) not null,
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

DROP TABLE IF EXISTS m_subject;
CREATE TABLE m_subject (
	id varchar(4) primary key,
	name varchar(20) not null
);

DROP TABLE IF EXISTS teacher_subject;
CREATE TABLE teacher_subject (
	teacher_id varchar(8) REFERENCES teacher(id),
	subject_id varchar(4) REFERENCES m_subject(id),
	PRIMARY KEY(teacher_id, subject_id)
);

CREATE SEQUENCE lesson_id_seq
    INCREMENT BY 1
    MAXVALUE 99999999
    START WITH 5
    NO CYCLE
;

CREATE SEQUENCE student_id_seq
	INCREMENT BY 1
	MAXVALUE 99999999
	START WITH 1
	NO CYCLE
;

CREATE SEQUENCE classDetail_id_seq
	INCREMENT BY 1
	MAXVALUE 99999999
	START WITH 1
	NO CYCLE
;

CREATE SEQUENCE classSchedule_id_seq
	INCREMENT BY 1
	MAXVALUE 99999999
	START WITH 1
	NO CYCLE
;

CREATE SEQUENCE teacher_id_seq
	INCREMENT BY 1
	MAXVALUE 99999999
	START WITH 1
	NO CYCLE
;