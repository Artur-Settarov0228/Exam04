
-- task_01
CREAT DATABASE db_students;

\c students

CREATE TABLE  students(
    id serial primary key,
    name VARCHAR (80),
    age INT,
    group VARCHAR(60)
);

CREATE TABLE grades (
    id serial primary key,
    students_id INT NOT NULL,
    subject VARCHAR NOT NULL,
    grade INT 
);

-- task_02



INSERT INTO  students ( name, age , group)
VALUES ('Ali valyev', 10 , 'Mt-23-10'), 
('Sherzod Toxtayev', 23, 'DS-104'),
('Dilnoza Karimova', 22, 'CS-102'),
('Madina Rustamova', 21, 'CS-103'),
('Dilnoza Karimova', 22, 'CS-102');


INSERT INTO grades (student_id, subject, grade)
VALUES (1, 'Matematika', 5), (1, 'Ingliz tili', 4), (2, 'Matematika', 3),
(2, 'Fizika', 4), (3, 'Informatika', 5), (3, 'Matematika', 4),
(4, 'Tarix', 2), (4, 'Ingliz tili', 3), (5, 'Fizika', 5),
(5, 'Matematika', 4);


-- task_03

SELECT name , group from students;

-- task_04
SELECT students.name, students.group, grades.subject, grades.grade
FROM students
JOIN grades ON students.id = grades.student_id
ORDER BY students.id;


-- task_05
SELECT  name, age  from students where age > 20;

-- task_06

select students.name,avg(grades.grade) as grade_overal from students 
JOIN grades on students.id = grades.student_id 
group by students.name;



-- task_07
SELECT students.group, COUNT(*) AS student_count FROM students;

-- task_08
SELECT MAX(grade) AS max_grader FROM grades;

-- task_09
SELECT name, age, group from students where name like 'A%';

-- task_10

delete from students  where group = " group C";


