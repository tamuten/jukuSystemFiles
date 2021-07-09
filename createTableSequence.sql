DROP TABLE lesson;
CREATE TABLE lesson (
	id varchar(8) primary key,
	name varchar(60) not null,
	alias varchar(60),
	time integer not null
);

DROP TABLE student;
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
	update_datetime timestamp
);

DROP TABLE course;
CREATE TABLE course (
	id varchar(8) primary key,
	name varchar(60) not null,
	alias varchar(60),
	fee integer,
	lesson1 varchar(8),
	lesson2 varchar(8),
	lesson3 varchar(8),
	lesson4 varchar(8)
);

DROP TABLE grade;
CREATE TABLE grade (
	id smallint primary key,
	name varchar(6) not null
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