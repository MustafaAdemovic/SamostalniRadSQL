/* Insert values into  students table*/
.header on
.mode column
insert into students values (?, 'Mustafa', 'Ademovic', 1);
insert into students values (?, 'Vedad', 'Zornic', 2);
insert into students values (?, 'Emir', 'Imamovic', 2);
insert into students values (?, 'Gordan', 'Sajevic', 3);

/*Insert values into lecturers table*/
insert into lecturers values (?, 'Benjamin', 'Talic', 1000);
insert into lecturers values (?, 'Emir', 'Arnautovic', 2000);
insert into lecturers values (?, 'Vedad', 'Letic', 3000);
insert into lecturers values (?, 'Damir', 'Zekic', 2000);

/*Insert values into courses table*/
insert into courses values("BC111", "Into to Java", 20);
insert into courses values("BC112", "Database Desing", 10);
insert into courses values("BC113", "Chemistry", 20);
insert into courses values("BC114", "Sqlite", 20);

/* creating student course relations */
insert into course_taken values(1, "BC111", 2);
insert into course_taken values(1, "BC112", 3);
insert into course_taken values(3, "BC113", 2);
insert into course_taken values(3, "BC114", 5);
insert into course_taken values(2, "BC112", 2);
insert into course_taken values(4, "BC111", 2);

/* creating lecturer course relations */
insert into course_taught values(1, "BC111");
insert into course_taught values(2, "BC112");
insert into course_taught values(3, "BC113");
insert into course_taught values(4, "BC114");

