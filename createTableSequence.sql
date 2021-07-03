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