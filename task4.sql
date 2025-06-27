create database student;
 use student;
 
 create table students(id int primary key,
	name varchar(15) not null,
    age int ,
    grade varchar(2) default 'na'
    );
    
    insert into students values(1,'Sudhanshu',21,'A');
    insert into students values(2,'Rakesh',22,'A');
    insert into students values(3,'Kumar',19,'B');
    insert into students values(4,'Sooraj',21,'B');
    insert into students values(5,'Ayoosh',20,'A');
    insert into students values(6,'Ruru',19,'B');
    insert into students values(7,'Subham',21,'C');
    insert into students values(8,'Roopa',20,'C');

SET SQL_SAFE_UPDATES = 0;

select * from students;
ALTER TABLE students ADD COLUMN marks INT;


update students set marks = 85 where id = 1;
update students set marks = 90 where id = 2;
update students set marks = 75 where id = 3;
update students set marks = 88 where id = 4;
update students set marks = 92 where id = 5;
update students set marks = 78 where id = 6;
update students set marks = 65 where id = 7;
update students set marks = 70 where id = 8;

select avg(marks) from students;

select grade, sum(marks) as total_marks
from students
group by grade;


select count(*) as students_above_80
from students
where marks > 80;

select count(*) as total_students
from students;

   select grade, count(*) as students_above_20
from students
where age > 20
group by grade;

select avg(marks), sum(marks), max(marks), min(marks) 
from students;

select grade, count(*) as student_count
from students
group by grade
having count(*) > 2;

select count(distinct age) as distinct_ages
from students;


    

    