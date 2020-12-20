-- #1
SELECT * FROM teachers;


-- #2
SELECT * FROM student_group WHERE speciality = 'ЭВМ';


-- #3
SELECT teachers.phone_number, teacher_student_group.room FROM teacher_student_group JOIN teachers ON teacher_student_group.teacher = teachers.id WHERE teacher_student_group.subject = '18П';


-- 4

SELECT subjects.id, subjects.name FROM subjects JOIN      
teacher_student_group ON teacher_student_group.subject = subjects.id 
JOIN teachers ON teachers.id = teacher_student_group.teacher WHERE   
teachers.last_name = 'Костин';

-- 5

SELECT teacher_student_group.group FROM teacher_student_group
JOIN teachers ON teacher_student_group.teacher = teachers.id
WHERE teachers.last_name = 'Фролов';


-- 6

SELECT * from subjects WHERE speciality = 'АСОИ';


-- 7

SELECT * from teachers WHERE speciality LIKE '%АСОИ%';


-- 8

SELECT DISTINCT teachers.last_name FROM teachers JOIN teacher_student_group ON teacher_student_group.teacher = teachers.id
WHERE teacher_student_group.room = 210;



-- 9

SELECT subjects.name, student_group.name FROM student_group JOIN teacher_student_group ON 
teacher_student_group.group = student_group.code JOIN subjects ON subjects.id = teacher_student_group.subject WHERE teacher_student_group.room BETWEEN 100 AND 200;

-- 10

WITH temp as (SELECT code, speciality FROM student_group)
SELECT student_group.code , temp.code from student_group
JOIN temp on student_group.speciality = temp.speciality
AND temp.code != student_group.code;


-- 11

SELECT sum(student_count) FROM student_group WHERE student_group.speciality = 'ЭВМ';


-- 12

SELECT teachers.phone_number FROM teachers WHERE speciality LIKE '%ЭВМ%';


-- 13
SELECT subject FROM teacher_student_group GROUP BY subject
HAVING count("group") = (SELECT count(*) from student_group);



-- 14

SELECT DISTINCT teachers.last_name FROM teacher_student_group
JOIN teachers ON teacher_student_group.teacher = teachers.id
WHERE subject IN (SELECT subject FROM teacher_student_group
            WHERE teacher IN (SELECT teacher FROM teacher_student_group WHERE      
             subject = '14П'));

-- 15
SELECT * FROM subjects WHERE subjects.id NOT IN
(SELECT DISTINCT subject FROM teacher_student_group
WHERE teacher = '221Л');

-- 16
SELECT * FROM subjects WHERE id NOT IN (SELECT DISTINCT subject
FROM teacher_student_group WHERE "group" = (SELECT code
FROM student_group WHERE name = 'М-6'));


-- 17

SELECT * FROM teachers WHERE teachers.id IN (SELECT teacher FROM  
            teacher_student_group WHERE "group" = '3Г' OR "group" = '8Г')
 	AND chair = 'Доцент';


-- 18

SELECT t.subject, t.teacher, t.group from teacher_student_group as t
JOIN teachers ON t.teacher = teachers.id WHERE teachers.post = 'ЭВМ' AND 
teachers.speciality LIKE '%АСОИ%';


-- 19
SELECT code from student_group JOIN teachers t ON student_group.speciality = t.speciality;

-- 20
SELECT DISTINCT teacher_student_group.teacher FROM teacher_student_group JOIN teachers ON teachers.id = teacher_student_group.teacher JOIN subjects
ON subject = subjects.id JOIN student_group
ON teacher_student_group.group = student_group.code
WHERE subjects.speciality LIKE '%'
 + student_group.speciality 
 + '%' AND teachers.post = 'ЭВМ';


-- 21

SELECT DISTINCT student_group.speciality
FROM teacher_student_group JOIN student_group
ON teacher_student_group.group = student_group.code
JOIN teachers ON teacher_student_group.teacher = teachers.id
WHERE teachers.post = 'АСУ';


-- 22

SELECT teacher_student_group.subject FROM teacher_student_group
JOIN student_group ON teacher_student_group.group = student_group.code
            WHERE student_group.name = 'АС-8';


-- 23
SELECT DISTINCT "group" FROM teacher_student_group
WHERE subject IN (SELECT subject FROM teacher_student_group
JOIN student_group ON teacher_student_group.group = student_group.code
WHERE student_group.name = 'АС-8') AND "group" NOT IN (SELECT DISTINCT "group" FROM
 teacher_student_group JOIN student_group ON teacher_student_group.group = student_group.code WHERE student_group.name = 'АС-8');


-- 24
SELECT DISTINCT "group" FROM teacher_student_group WHERE "group" NOT IN (SELECT DISTINCT "group" FROM teacher_student_group
WHERE subject IN (SELECT subject FROM teacher_student_group
JOIN student_group ON teacher_student_group.group = student_group.code WHERE student_group.name = 'АС-8'));

-- 25

SELECT DISTINCT "group" FROM teacher_student_group WHERE "group" NOT IN (SELECT DISTINCT "group" FROM teacher_student_group                     WHERE subject IN (SELECT subject FROM teacher_student_group WHERE teacher = '430Л'));


-- 26
SELECT teacher_student_group.teacher FROM teacher_student_group
JOIN student_group ON teacher_student_group.group = student_group.code
WHERE student_group.name = 'Э-15' AND teacher NOT IN (SELECT teacher FROM teacher_student_group WHERE subject = '12П');


