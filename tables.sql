/* Here we make a default tabels for students and lecturers and we have two other tables
Course_taken who show which student take which course and  
Course_taught hwo show which lecturer teaches which course*/

.header on
pragma foreing_keys = on;

create table if not exists Students (

 	student_id integer primary key autoincrement,
 	name varchar(15) not null,
 	surname varchar(15) not null,
 	study_year smallint default 1

);

create table if not exists Lecturers (

	id integer primary key autoincrement,
	name varchar(15) not null,
	surname varchar(15) not null,
	salary integer default 1000

);

create table if not exists Courses (

	code varchar(6) primary key,
	name varchar(20),
	num_students smallint default 15

);

create table if not exists Course_taken (
	student_id integer,
	course_code varchar(6),
	grade smallint default 0,
	foreign key (student_id) references Students on update cascade on delete cascade,
	foreign key (course_code) references Courses on update cascade on delete cascade,
	primary key (student_id, course_code)
);

create table if not exists Course_taught (
	lecturer_id integer,
	course_code varchar(6),
	foreign key (lecturer_id) references Lecturers on update cascade on delete cascade,
	foreign key (course_code) references Courses(code) on update cascade on delete cascade,
	primary key (lecturer_id, course_code)
);