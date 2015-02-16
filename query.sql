/* All students whose study year is bigger than 2 */
select name as Ime, surname as Prezime, study_year as Godina
from students
where Godina > 2;

/* Count a students and return number of students in our case 4 */
select count(name) as BrojStudenata from students;

/* average of all salarys */
select avg(salary) as ProsjecnaPlata from Lecturers;

/* sum of all salarys */
select sum(salary) as UkupnaPlata from lecturers;

/* Write all salary order by smaller to bigger */
select name, salary from lecturers order by salary;

/* we want to print the course name and the lecturers name */
select courses.name as cn, lecturers.name as ln from courses
inner join course_taught on courses.code = course_taught.course_code
inner join lecturers on course_taught.lecturer_id = lecturers.id;

/*Write a query to list all the student names and surnames and the names of the courses they have taken*/
select students.name as Ime, students.surname as Prezime, courses.name as ImePredmeta from students
inner join Course_taken on students.student_id = Course_taken.student_id
inner join courses on Course_taken.course_code = courses.code;

/*Write a query to calculate the average grade for a single student*/
select students.name as Student1, avg(grade) as Prosjek from students
inner join Course_taken on students.student_id = Course_taken.student_id
inner join courses on Course_taken.course_code = courses.code
where students.student_id = 1;

/*Write a query to list student names, names of courses they have taken and the names of the lectures who taught those courses. 
For example: Student Name | Lecturer Name | Course Name John Pettruci Cahrles Xavier Intro to Java*/
select students.name as ImeStudenta, lecturers.name as ImeProfesora, courses.name as ImePredmeta
from students
inner join Course_taken on students.student_id = Course_taken.student_id
inner join courses on Course_taken.course_code = courses.code
inner join course_taught on courses.code = course_taught.course_code
inner join lecturers on course_taught.lecturer_id = lecturers.id;

/* Write a .sql to alter the student table to add a column for age */
Alter table students add column age smallint;