CREATE TABLE lesson (
	id varchar(8) primary key,
	name varchar(60) not null,
	alias varchar(60),
	time integer not null
);

CREATE TABLE student (
	id varchar(8) primary key,
	name varchar(60) not null,
	grade integer not null
);

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

CREATE SEQUENCE lesson_id_seq
    INCREMENT BY 1
    MAXVALUE 99999999
    START WITH 5
    NO CYCLE
;

CREATE SEQUENCE student_id_seq
	INCREMENT BY 1
	MAXVALUE 99999999
	START WITH 3
	NO CYCLE
;